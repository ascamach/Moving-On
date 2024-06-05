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
            
            Backpropagate(childNode, board.CurrentGameState(simulationResult) == 2);
        }

        int bestAction = GetBestAction(root);
        Debug.Log("Possible Actions: " + GetActionsString(root));
        Debug.Log("Action chosen: " + bestAction.ToString());
        return bestAction;
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
        
        /*
        while (!board.IsTerminal(currentState))
        {
            
            List<int> possibleMoves = board.PossibleMoves(currentState);
            int action = possibleMoves[Random.Range(0, possibleMoves.Count)];
            currentState = board.NextState(currentState, action);
        }
        */
        
        
        while (!board.IsTerminal(currentState))
        {
            int action = -1;

            int numPlayerTiles, numBotTiles, emptyTile;
            for (int row = 0; row < 3; row++)
            {
                numPlayerTiles = 0;
                numBotTiles = 0;
                emptyTile = -1;

                for (int i = 0; i < 3; i++)
                {
                    int index = (row * 3) + 1;
                    if (currentState[index] == 1)
                    {
                        numPlayerTiles++;
                    }
                    else if (currentState[index] == 2)
                    {
                        numBotTiles++;
                    }
                    else
                    {
                        emptyTile = index;
                    }
                }
                if ((numPlayerTiles == 2 || numBotTiles == 2) && (emptyTile != -1))
                {
                    action = emptyTile;
                }
            }

            for (int col = 0; col < 3; col++)
            {
                numPlayerTiles = 0;
                numBotTiles = 0;
                emptyTile = -1;

                for (int i = 0; i < 3; i++)
                {
                    int index = col + (i * 3);
                    if (currentState[index] == 1)
                    {
                        numPlayerTiles++;
                    }
                    else if (currentState[index] == 2)
                    {
                        numBotTiles++;
                    }
                    else
                    {
                        emptyTile = index;
                    }
                }
                if ((numPlayerTiles == 2 || numBotTiles == 2) && (emptyTile != -1))
                {
                    action = emptyTile;
                }
            }

            if (action == -1)
            {
                List<int> possibleMoves = board.PossibleMoves(currentState);
                action = possibleMoves[Random.Range(0, possibleMoves.Count)];
            }

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
