using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
using TMPro.Examples;
using UnityEngine;

public class GameBoard
{
    public enum Tile
    {
        Empty,
        X,
        O
    }

    public Tile[] board;
    public bool isPlayerTurn;

    // Start is called before the first frame update
    public GameBoard()
    {
        board = new Tile[9];
        for (int i = 0; i < 9; i++)
        {
            board[i] = Tile.Empty;
        }

        isPlayerTurn = false;
    }
    public void PrintData()
    {
        Debug.Log(board);
    }

    // CurrentGameState(): returns -1 if game in progress, 0 if tie, 1 if player wins, 2 if player loses
    public int CurrentGameState()
    {
        if (board[0] == board[1] && board[1] == board[2] && board[0] != Tile.Empty)
        {
            // row0 winner
            return DetermineWinner(board[0]);
        }
        else if (board[3] == board[4] && board[4] == board[5] && board[3] != Tile.Empty)
        {
            // row1 winner
            return DetermineWinner(board[3]);
        }
        else if (board[6] == board[7] && board[7] == board[8] && board[6] != Tile.Empty)
        {
            // row2 winner
            return DetermineWinner(board[6]);
        }
        else if (board[0] == board[3] && board[3] == board[6] && board[0] != Tile.Empty)
        {
            // col0 winner
            return DetermineWinner(board[0]);
        }
        else if (board[1] == board[4] && board[4] == board[7] && board[1] != Tile.Empty)
        {
            // col1 winner
            return DetermineWinner(board[1]);
        }
        else if (board[2] == board[5] && board[5] == board[8] && board[2] != Tile.Empty)
        {
            // col2 winner
            return DetermineWinner(board[2]);
        }
        else if (board[0] == board[4] && board[4] == board[8] && board[0] != Tile.Empty)
        {
            // diag0 winner
            return DetermineWinner(board[0]);
        }
        else if (board[2] == board[4] && board[4] == board[6] && board[2] != Tile.Empty)
        {
            // diag1 winner
            return DetermineWinner(board[2]);
        }
        else if (!board.Contains(Tile.Empty))
        {
            // tie
            Debug.Log("Tie (0)");
            return 0;
        }
        else
        {
            // in progress
            return -1;
        }
    }
    public bool IsTerminal()
    {
        return (CurrentGameState() != -1);
    }

    // DetermineWinner(s): given tile state s, returns 1 for Player Win, or returns 2 for Player Loss. defaults to -1
    private int DetermineWinner(Tile s)
    {
        int winner = -1;
        if (s == Tile.O)
        {
            Debug.Log("Winner: Player (1)");
            winner = 1;
        }
        else if (s == Tile.X)
        {
            Debug.Log("Winner: Bot (2)");
            winner = 2;
        }
        return winner;
    }

    public void ResetBoard()
    {
        for (int i = 0; i < 9; i++)
        {
            board[i] = Tile.Empty;
        }

        isPlayerTurn = false;
    }
}