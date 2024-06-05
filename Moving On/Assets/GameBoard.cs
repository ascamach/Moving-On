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

    // constructor
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

    // a STATE is a List<int>, where state[0-8] represents tiles on the board that are either empty (0), O (1), or X (2).
    // state[9] represents the current player: User (1) or Bot (2)
    public List<int> NextState(List<int> state, int action)
    {
        List<int> newState = new List<int>(state);
        if (state[9] == 1)
        {
            newState[action] = 1;
            newState[9] = 2;
        } else
        {
            newState[action] = 2;
            newState[9] = 1;
        }
        return newState;
    }

    public List<int> GetState()
    {
        List<int> state = new List<int>();
        for (int i = 0; i < 9; i++)
        {
            if (board[i] == Tile.Empty)
            {
                state.Add(0);
            }
            else if (board[i] == Tile.O)
            {
                state.Add(1);
            }
            else
            {
                state.Add(2);
            }
        }
        state.Add(isPlayerTurn ? 1 : 2);

        return state;
    }

    // update the internal data (board[] and isPlayerTurn) to match the given state 
    public void SetData(List<int> state)
    {
        for (int i = 0; i < 9; i++)
        {
            if (state[i] == 0)
            {
                board[i] = Tile.Empty;
            }
            else if (state[i] == 1)
            {
                board[i] = Tile.O;
            }
            else
            {
                board[i] = Tile.X;
            }
        }
        isPlayerTurn = state[9] == 1;
    }

    // CurrentGameState(): returns -1 if game in progress, 0 if tie, 1 if player wins, 2 if player loses
    public int CurrentGameState(List<int> state)
    {
        if (state[0] == state[1] && state[1] == state[2] && state[0] != 0)
        {
            // row0 winner
            return state[0];
        }
        else if (state[3] == state[4] && state[4] == state[5] && state[3] != 0)
        {
            // row1 winner
            return state[3];
        }
        else if (state[6] == state[7] && state[7] == state[8] && state[6] != 0)
        {
            // row2 winner
            return state[6];
        }
        else if (state[0] == state[3] && state[3] == state[6] && state[0] != 0)
        {
            // col0 winner
            return state[0];
        }
        else if (state[1] == state[4] && state[4] == state[7] && state[1] != 0)
        {
            // col1 winner
            return state[1];
        }
        else if (state[2] == state[5] && state[5] == state[8] && state[2] != 0)
        {
            // col2 winner
            return state[2];
        }
        else if (state[0] == state[4] && state[4] == state[8] && state[0] != 0)
        {
            // diag0 winner
            return state[0];
        }
        else if (state[2] == state[4] && state[4] == state[6] && state[2] != 0)
        {
            // diag1 winner
            return state[2];
        }
        else if (!state.Contains(0))
        {
            // tie
            return 0;
        }
        else
        {
            // game in progress
            return -1;
        }
    }
    public bool IsTerminal(List<int> state)
    {
        return (CurrentGameState(state) != -1);
    }

    public bool IsEmpty(List<int> state)
    {
        for (int i = 0; i < 9; i++)
        {
            if (state[i] != 0)
            {
                return false;
            }
        }
        return true;
    }

    public void ResetBoard()
    {
        for (int i = 0; i < 9; i++)
        {
            board[i] = Tile.Empty;
        }

        isPlayerTurn = false;
    }

    // returns List<int> of indices [0-8] of empty spaces 
    public List<int> PossibleMoves(List<int> state)
    {
        List<int> possibleMoves = new List<int> ();
        for (int i = 0; i < 9; i++)
        {
            if (state[i] == 0)
            {
                possibleMoves.Add(i);
            }
        }

        return possibleMoves;
    }
}