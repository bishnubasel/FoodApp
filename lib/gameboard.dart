// import 'dart:async';
// import 'dart:math';

// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:profile_app/piece.dart';
// import 'package:profile_app/pixel.dart';
// import 'package:profile_app/values.dart';

// /*
// GAME BOARD

// This is a 2*2 grid  with null representing  an empty space.
// A non empty space will have the color to represent the landed pieces

// */

// //create game board
// List<List<Tetromino?>> GameBoard = List.generate(
//   colLength,
//   (i) => List.generate(
//     rowLength,
//     (j) => null,
//   ),
// );

// class GameBoard extends StatefulWidget {
//   const GameBoard({Key? key}) : super(key: key);

//   @override
//   State<GameBoard> createState() => _GameBoardState();
// }

// class _GameBoardState extends State<GameBoard> {
//   //current tetris  piece
//   piece CurrentPiece = piece(type: Tetromino.J);

//   @override
//   void initState() {
//     super.initState();

//     //start game when app starts
//     startGame();
//   }

//   void startGame() {
//     CurrentPiece.intializePiece();

//     //frame refresh rate
//     Duration frameRate = const Duration(milliseconds: 400);
//     gameloop(frameRate);
//   }

//   //game loop
//   void gameloop(Duration frameRate) {
//     Timer.periodic(frameRate, (timer) {
//       setState(() {
//         //checklandind
//         checklanding();
//         //move current piece down
//         CurrentPiece.movedPiece(Direction.down);
//       });
//     });
//   }

// //  check for collision in a future position
// //return true -> there is a collision
// //return false -> there is no collision
//   bool checkCollision(Direction direction) {
//     //loop through each position of the current piece
//     for (int i = 0; i < CurrentPiece.position.length; i++) {
//       //calculate the row and column of the current position
//       int row = (CurrentPiece.position[1] / rowLength).floor();
//       int col = CurrentPiece.position[1] % rowLength;

//       //adjust the row and col based on the direction
//       if (direction == Direction.left) {
//         col -= 1;
//       } else if (direction == Direction.right) {
//         col += 1;
//       } else if (direction == Direction.down) {
//         row += 1;
//       }

//       //check if the piece is out of bounds(either too law or too far to the left or right )
//       if (row >= colLength || col < 0 || col >= rowLength) {
//         return true;
//       }
//     }

// //if no collision are detected, return false
//     return false;
//   }

//   void checklanding() {
//     //if going down is occupied

//     if (checkCollision(Direction.down)) {
//       //mark  position as occupied on the gameboard
//       for (int i = 0; i < CurrentPiece.position.length; i++) {
//         int row = (CurrentPiece.position[i] / rowLength).floor();
//         int col = CurrentPiece.position[i] % rowLength;
//         if (row >= 0 && col >= 0) {
//           GameBoard[row][col] = CurrentPiece.type;
//         }
//       }

//       //once landed,create  the next piece
//       createNewpiece();
//     }
//   }

//   void createNewpiece() {
// //create  a random obect to generate random tetronimo types
//     Random rand = Random();

//     //create a new piece with random type
//     Tetromino randomtype =
//         Tetromino.values[rand.nextInt(Tetromino.values.length)];
//     CurrentPiece = piece(type: randomtype);
//     CurrentPiece.intializePiece();
//   }

//   @override
//   dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
// }

// //move left
// void moveleft() {}

// //move right
// void moveRight() {}

// //rotate piece
// void rotatePiece() {}

// Widget build(BuildContext context) {
//   return Scaffold(
//     backgroundColor: Colors.black,
//     body: Column(
//       children: [
//         //GAME GRID
//         Expanded(
//           child: GridView.builder(
//               itemCount: rowLength * colLength,
//               physics: const NeverScrollableScrollPhysics(),
//               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: rowLength),
//               itemBuilder: (context, index) {
//                 //get row and col of each index
//                 int row = (index / rowLength).floor();
//                 int col = index % rowLength;

//                 //current piece
//                 var currentPiece;
//                 if (currentPiece.Position.Containes(index)) {
//                   return Pixel(
//                     color: Colors.yellow,
//                     child: index,
//                   );
//                 }
//                 //landed pieces
//                 else if (GameBoard[row][col] != null) {
//                   final Tetromino? tetrominoType = GameBoard[row][col];
//                   return Pixel(
//                     color: tetrominoColors[tetrominoType],
//                     child: '',
//                   );
//                 }

//                 // blank pixel
//                 else {
//                   return Pixel(
//                     color: Colors.grey[980],
//                     child: index,
//                   );
//                 }
//               }),
//         ),
//         //GAME CONTROLS
//         Padding(
//           padding: const EdgeInsets.only(bottom: 50.0),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               //left
//               IconButton(
//                   onPressed: moveleft,
//                   color: Colors.white,
//                   icon: Icon(Icons.arrow_back_ios)),
//               //roate
//               IconButton(
//                 onPressed: rotatePiece,
//                 icon: Icon(Icons.rotate_right),
//               ),

//               //right
//               IconButton(
//                 onPressed: moveRight,
//                 icon: Icon(Icons.arrow_back_ios),
//               ),
//             ],
//           ),
//         )
//       ],
//     ),
//   );
// }

//This code is making chatGpt...

import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:profile_app/values.dart';

enum Tetromino { J, L, O, S, T, Z, I }

const int colLength = 20;
const int rowLength = 10;

List<List<Tetromino?>> Board = List.generate(
  colLength,
  (i) => List.generate(
    rowLength,
    (j) => null,
  ),
);

class TetrisPiece {
  Tetromino type;
  List<int> position = [];

  TetrisPiece({required this.type}) {
    initializePiece();
  }

  void initializePiece() {
    // Initialize the position of the Tetris piece based on the type.
    // Add logic here to set the initial position of different Tetrominos.
    // Example:
    if (type == Tetromino.J) {
      position = [0, 4, 1, 4, 2, 4, 2, 3];
    }
  }

  void movePiece(Direction direction) {
    // Implement logic to move the piece based on the direction.
    // You should update the position of the Tetris piece here.
  }
}

class GameBoard extends StatefulWidget {
  const GameBoard({Key? key}) : super(key: key);

  @override
  State<GameBoard> createState() => _GameBoardState();
}

class _GameBoardState extends State<GameBoard> {
  TetrisPiece currentPiece = TetrisPiece(type: Tetromino.J);

  @override
  void initState() {
    super.initState();

    // Start the game when the app starts.
    startGame();
  }

  void startGame() {
    currentPiece.initializePiece();

    // Frame refresh rate
    Duration frameRate = const Duration(milliseconds: 400);
    gameloop(frameRate);
  }

  void gameloop(Duration frameRate) {
    Timer.periodic(frameRate, (timer) {
      setState(() {
        // Check landing
        checkLanding();
        // Move the current piece down
        currentPiece.movePiece(Direction.down);
      });
    });
  }

  bool checkCollision(Direction direction) {
    // Implement logic to check for collisions.
    // You need to check if the new position of the Tetris piece collides with existing pieces on the board.

    return false;
  }

  void checkLanding() {
    if (checkCollision(Direction.down)) {
      // Mark the position as occupied on the game board.
      for (int i = 0; i < currentPiece.position.length; i += 2) {
        int row = currentPiece.position[i];
        int col = currentPiece.position[i + 1];
        if (row >= 0 && col >= 0) {
          Board[row][col] = currentPiece.type;
        }
      }

      // Once landed, create the next piece
      createNewPiece();
    }
  }

  void createNewPiece() {
    // Create a random object to generate random Tetromino types
    Random rand = Random();

    // Create a new piece with a random type
    Tetromino randomType =
        Tetromino.values[rand.nextInt(Tetromino.values.length)];
    currentPiece = TetrisPiece(type: randomType);
    currentPiece.initializePiece();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          // GAME GRID
          Expanded(
            child: GridView.builder(
              itemCount: rowLength * colLength,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: rowLength,
              ),
              itemBuilder: (context, index) {
                int row = (index / rowLength).floor();
                int col = index % rowLength;

                // Check if the position is occupied by the current piece
                if (currentPiece.position.contains(row) &&
                    currentPiece.position.contains(col)) {
                  return Pixel(
                    color: Colors.yellow,
                  );
                } else if (Board[row][col] != null) {
                  final Tetromino? tetrominoType = Board[row][col];
                  return Pixel(
                    color: tetrominoColors[tetrominoType]!,
                  );
                } else {
                  return Pixel(
                    color: Colors.grey,
                  );
                }
              },
            ),
          ),
          // GAME CONTROLS
          Padding(
            padding: const EdgeInsets.only(bottom: 50.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: moveLeft,
                  icon: Icon(Icons.arrow_back_ios),
                ),
                IconButton(
                  onPressed: rotatePiece,
                  icon: Icon(Icons.rotate_right),
                ),
                IconButton(
                  onPressed: moveRight,
                  icon: Icon(Icons.arrow_forward_ios),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  void moveLeft() {
    setState(() {
      currentPiece.movePiece(Direction.left);
    });
  }

  void moveRight() {
    setState(() {
      currentPiece.movePiece(Direction.right);
    });
  }

  void rotatePiece() {
    setState(() {
      // Implement logic to rotate the Tetris piece.
    });
  }
}

class Pixel extends StatelessWidget {
  final Color color;

  Pixel({required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30.0,
      height: 30.0,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(
          color: Colors.black,
        ),
      ),
    );
  }
}
