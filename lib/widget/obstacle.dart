import 'package:flutter/material.dart';

class Obstacle extends StatelessWidget {
  final double obstacleX;
  final double obstacleHeight;

  Obstacle({required this.obstacleX, required this.obstacleHeight});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: obstacleX,
      child: Container(
        width: 50,
        height: obstacleHeight,
        color: Colors.green, // You can use any color you like for obstacles
      ),
    );
  }
}
