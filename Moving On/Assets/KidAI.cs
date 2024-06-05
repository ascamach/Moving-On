using System.Collections;
using System.Collections.Generic;
using System.Runtime.CompilerServices;
using UnityEngine;
using UnityEngine.Animations;

public class KidAI : MonoBehaviour
{
    private GameObject[] boardTiles;
    // Start is called before the first frame update
    void Start()
    {
        boardTiles = GameObject.FindGameObjectsWithTag("TicTacToeTile");
    }

    /*
    private (MCTSNode, TicTacToeTile.Tile[]) TraverseNodes(MCTSNode node, TicTacToeTile.Tile[] board)
    {
        MCTSNode starter = node;

        TicTacToeTile.Tile[] currentBoard = board;
        while(starter.untriedActions.Length == 0 && )
    }
    */
}

class MCTSNode
{
    public MCTSNode parent;
    public int parentAction;

    public Dictionary<int, MCTSNode> children;
    public int[] untriedActions;

    public int wins;
    public int visits;

    public MCTSNode(MCTSNode parent, int parentAction, int[] untriedActions) {
        this.parent = parent;
        this.parentAction = parentAction;
        this.untriedActions = untriedActions;

        children = new Dictionary<int, MCTSNode>();
        wins = 0;
        visits = 0;
    }
}
