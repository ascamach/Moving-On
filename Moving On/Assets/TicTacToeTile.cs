using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;

public class TicTacToeTile : MonoBehaviour
{
    [SerializeField] private TextMeshProUGUI m_TextMeshPro;
    

    public GameBoard.Tile state;
    public int tileNumber;
    // Start is called before the first frame update
    void Start()
    {
        state = GameBoard.Tile.Empty;
    }

    // Update is called once per frame
    void Update()
    {
        if (state == GameBoard.Tile.Empty)
        {
            m_TextMeshPro.text = "";
        } else if (state == GameBoard.Tile.X)
        {
            m_TextMeshPro.text = "X";
        }
        else
        {
            m_TextMeshPro.text = "O";
        }
        
    }

    public void ChangeState()
    {
        if (state == GameBoard.Tile.Empty)
        {
            state = GameBoard.Tile.X;
        }
        else if (state == GameBoard.Tile.X)
        {
            state = GameBoard.Tile.O;
        }
        else
        {
            state = GameBoard.Tile.Empty;
        }
    }
}
