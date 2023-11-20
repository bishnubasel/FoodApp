import 'package:flutter/material.dart';

import 'values.dart';

class piece {
  //type of tetris pice
  Tetromino type;
  piece({required this.type});

  // the piece is just a list of integers
  List<int> position = [];

  //color of tetris piece
  Color get Colors {
    return tetrominoColors[type] ??
        Color(0xFFFFFFFF); //Default to  white if no color is found
  }

  //generate the integers
  void intializePiece() {
    switch (type) {
      case Tetromino.L:
        position = [
          -26,
          -16,
          -6,
          -5,
        ];
        break;
      case Tetromino.J:
        position = [
          -25,
          -15,
          -5,
          -6,
        ];
        break;
      case Tetromino.I:
        position = [
          -4,
          -5,
          -6,
          -7,
        ];
        break;

      case Tetromino.O:
        position = [
          -15,
          -16,
          -5,
          -6,
        ];
        break;

      case Tetromino.S:
        position = [
          -15,
          -14,
          -6,
          -5,
        ];
        break;

      case Tetromino.Z:
        position = [
          -17,
          16,
          -6,
          -5,
        ];
        break;

      case Tetromino.T:
        position = [
          -26,
          -16,
          -6,
          -15,
        ];
        break;
      default:
    }
  }

  //moving piece
  void movedPiece(Direction direction) {
    switch (direction) {
      case Direction.down:
        for (int i = 0; i < position.length; i++) {
          position[i] += rowLength;
        }
        break;
      case Direction.left:
        for (int i = 0; i < position.length; i++) {
          position[i] -= rowLength;
        }
        break;
      case Direction.right:
        for (int i = 0; i < position.length; i++) {
          position[i] += 1;
        }
        break;
      default:
    }
  }
}
