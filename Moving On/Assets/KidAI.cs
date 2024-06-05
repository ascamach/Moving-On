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
    private int numNodes = 3000;
    private double exploreFaction = 2f;

    public int Think(GameBoard board, List<int> currentState)
    {
        MCTSNode root = new MCTSNode(null, -1, board.PossibleMoves(currentState));

        for (int x = 0; x < numNodes; x++)
        {
            List<int> state = currentState;
            MCTSNode node = root;

            // MCTS
            MCTSNode nextNode;
            List<int> nextState;
            (nextNode, nextState) = TraverseNodes(node, board, state);

            MCTSNode childNode;
            List<int> childState;
            (childNode, childState) = ExpandLeaf(nextNode, board, nextState);

            List<int> simulationResult = Rollout(board, childState);
            
            Backpropagate(childNode, board.CurrentGameState(simulationResult) == 2);
        }

        int bestAction = GetBestAction(root);

        Debug.Log("Action chosen: " + bestAction.ToString());
        return bestAction;
    }

    private (MCTSNode, List<int>) TraverseNodes(MCTSNode node, GameBoard board, List<int> state)
    {
        MCTSNode currentNode = node;
        List<int> currentState = state;
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
        List<int> currentState = state;
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
            double winRate = node.wins / node.visits;
            if (winRate > maxRate)
            {
                maxRate = winRate;
                bestAction = action;
            }
        }
        return bestAction;
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
