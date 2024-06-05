using Ink.Parsed;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Runtime.CompilerServices;
using UnityEngine;
using UnityEngine.Animations;
using Random = UnityEngine.Random;

public class KidAI : MonoBehaviour
{
    private int numNodes = 1000;
    private double exploreFaction = 2f;

    public int Think(GameBoard board, List<int> currentState)
    {
        MCTSNode root = new MCTSNode(null, -1, board.PossibleMoves(currentState));

        for (int x = 0; x < numNodes; x++)
        {
            List<int> state = new List<int>(currentState);
            MCTSNode node = root;

            // MCTS
            MCTSNode nextNode;
            List<int> nextState;
            (nextNode, nextState) = TraverseNodes(node, board, state);

            MCTSNode childNode;
            List<int> childState;
            (childNode, childState) = ExpandLeaf(nextNode, board, nextState);

            List<int> simulationResult = Rollout(board, childState);

            bool winOrTie = board.CurrentGameState(simulationResult) == 2 || board.CurrentGameState(simulationResult) == 0;
            
            Backpropagate(childNode, winOrTie);
        }

        int chosenAction = -1;

        int bestAction = GetBestAction(root);
        // Debug.Log("Possible Actions: " + GetActionsString(root));

        int randomBlunderChance = Random.Range(0, 100);
        if (randomBlunderChance <= 15)
        {
            Debug.Log("Bot Blunders!");
            List<int> possibleMoves = board.PossibleMoves(currentState);
            chosenAction = possibleMoves[Random.Range(0, possibleMoves.Count)];
        }
        else
        {
            chosenAction = bestAction;
        }

        // Debug.Log("Action chosen: " + bestAction.ToString());
        return chosenAction;
    }

    private (MCTSNode, List<int>) TraverseNodes(MCTSNode node, GameBoard board, List<int> state)
    {
        MCTSNode currentNode = node;
        List<int> currentState = new List<int>(state);
        // keep traversing until currentNode has no children OR currentNode has untried actions
        while (currentNode.children.Count > 0 && currentNode.untriedActions.Count == 0)
        {
            MCTSNode max = null;
            foreach (MCTSNode child in currentNode.children.Values)
            {
                if (UCB(child) > (max != null ? UCB(max) : -1))
                {
                    max = child;
                }
            }

            currentNode = max;
            currentState = board.NextState(currentState, max.parentAction);
        }

        return (currentNode, currentState);
    }

    private (MCTSNode, List<int>) ExpandLeaf(MCTSNode node, GameBoard board, List<int> state)
    {
        if (board.IsTerminal(state))
        {
            return (node, state);
        }
        int action = node.untriedActions[Random.Range(0, node.untriedActions.Count)];
        node.untriedActions.Remove(action);
        List<int> newState = board.NextState(state, action);
        MCTSNode child = new MCTSNode(node, action, board.PossibleMoves(newState));
        node.children.Add(action, child);

        return (child, newState);

    }

    // TODO: currently random rollout
    private List<int> Rollout(GameBoard board, List<int> state)
    {
        List<int> currentState = new List<int>(state);
        
        
        while (!board.IsTerminal(currentState))
        {
            
            List<int> possibleMoves = board.PossibleMoves(currentState);
            int action = possibleMoves[Random.Range(0, possibleMoves.Count)];
            currentState = board.NextState(currentState, action);
        }
        return currentState;
    }

    private void Backpropagate(MCTSNode node, bool won)
    {
        if (node == null)
        {
            return;
        }

        node.visits += 1;
        if (won)
        {
            node.wins += 1;
        }
        Backpropagate(node.parent, won);
    }

    private double UCB(MCTSNode node)
    {
        double winRate = (double)node.wins / node.visits;
        double explore = exploreFaction * Math.Sqrt(Math.Log(node.parent.visits) / node.visits);
        return (winRate + explore);
    }

    private int GetBestAction(MCTSNode root)
    {
        double maxRate = -1.0;
        int bestAction = -1;
        foreach ((int action, MCTSNode node) in root.children)
        {
            double winRate = (double)node.wins / node.visits;
            if (winRate > maxRate)
            {
                maxRate = winRate;
                bestAction = action;
            }
        }
        return bestAction;
    }

    private string GetActionsString(MCTSNode root)
    {
        string actions = "";
        foreach ((int action, MCTSNode node) in root.children)
        {
            actions = actions + action.ToString() + " [" + ((double)node.wins / node.visits).ToString() + "], ";
        }
        return actions;
    }
}

class MCTSNode
{
    public MCTSNode parent;
    public int parentAction;

    public Dictionary<int, MCTSNode> children;
    public List<int> untriedActions;

    public int wins;
    public int visits;

    public MCTSNode(MCTSNode parent, int parentAction, List<int> untriedActions) {
        this.parent = parent;
        this.parentAction = parentAction;
        this.untriedActions = untriedActions;

        children = new Dictionary<int, MCTSNode>();
        wins = 0;
        visits = 0;
    }
}
