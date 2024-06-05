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
        if (mainBoard.CurrentGameState() != -1)
        {
            mainBoard.ResetBoard();
            foreach (GameObject t in boardTiles)
            {
                TicTacToeTile tScript = t.GetComponent<TicTacToeTile>();
                tScript.state = GameBoard.Tile.Empty;
            }
        }

        if (!mainBoard.isPlayerTurn)
        {
            // randomly select tile
            int chosenSpot = Random.Range(0, 9);
            while (mainBoard.board[chosenSpot] != GameBoard.Tile.Empty)
            {
                chosenSpot = Random.Range(0, 9);
            }

            // set internal data
            mainBoard.board[chosenSpot] = GameBoard.Tile.X;

            // render chosen tile
            TicTacToeTile tile = GetBoardTile(chosenSpot).GetComponent<TicTacToeTile>();
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