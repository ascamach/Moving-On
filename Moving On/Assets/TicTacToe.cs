using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;

public class TicTacToe : MonoBehaviour
{
    [SerializeField] private GameObject bot;

    public GameBoard mainBoard;

    private GameObject[] boardTiles;
    // Start is called before the first frame update
    void Start()
    {
        boardTiles = GameObject.FindGameObjectsWithTag("TicTacToeTile");

        mainBoard = new GameBoard();
    }

    // Update is called once per frame
    void Update()
    {
        //UpdateBoard();
        if (mainBoard.IsTerminal(mainBoard.GetState()))
        {
            Debug.Log("Game Result: " + mainBoard.CurrentGameState(mainBoard.GetState()).ToString());
            mainBoard.ResetBoard();
            foreach (GameObject t in boardTiles)
            {
                TicTacToeTile tScript = t.GetComponent<TicTacToeTile>();
                tScript.state = GameBoard.Tile.Empty;
            }
        }

        if (!mainBoard.isPlayerTurn)
        {

            int action = -1;
            // randomly select tile
            if (mainBoard.IsEmpty(mainBoard.GetState()))
            {
                action = Random.Range(0, 9);
            }
            else
            {
                // choose next action
                action = bot.GetComponent<KidAI>().Think(mainBoard, mainBoard.GetState());
            }

            // set internal data
            mainBoard.board[action] = GameBoard.Tile.X;

            // render chosen tile
            TicTacToeTile tile = GetBoardTile(action).GetComponent<TicTacToeTile>();
            while (tile.state != GameBoard.Tile.X)
            {
                tile.state = GameBoard.Tile.X;
            }

            mainBoard.isPlayerTurn = true;
        }
        else
        {
            // find first O tile that's empty in internal data
            foreach (GameObject t in boardTiles)
            {
                TicTacToeTile tScript = t.GetComponent<TicTacToeTile>();
                if (tScript.state == GameBoard.Tile.O && mainBoard.board[tScript.tileNumber] == GameBoard.Tile.Empty)
                {
                    mainBoard.board[tScript.tileNumber] = GameBoard.Tile.O;

                    mainBoard.isPlayerTurn = false;
                }
            }
        }
    }

    private GameObject GetBoardTile(int tileNum)
    {
        GameObject tile = null;
        foreach (GameObject t in boardTiles)
        {
            if (tileNum == t.GetComponent<TicTacToeTile>().tileNumber)
            {
                tile = t;
            }
        }
        return tile;
    }
}