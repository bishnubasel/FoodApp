import 'dart:async';
import 'package:flutter/material.dart';
import 'package:profile_app/bird.dart';
import 'package:profile_app/widget/obstacle.dart';

class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  double birdY = 0.0;
  bool gameHasStarted = false;
  double obstacleX = 400; // Initial obstacle X position
  double obstacleHeight = 150; // Height of the gap for the bird to pass through
  double obstacleSpeed = 3.0; // Adjust the speed as needed

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
    _controller.addListener(() {
      setState(() {
        birdY = (_animation.value - 0.5) * 300;
        obstacleX -= obstacleSpeed; // Move the obstacle to the left
        if (obstacleX < -50) {
          // Reset obstacle when it's off the screen
          obstacleX = 400;
        }
      });
    });
  }

  void startGame() {
    setState(() {
      gameHasStarted = true;
    });
    _controller.repeat();
  }

  void jump() {
    _controller.stop();
    _controller.animateTo(0.5,
        duration: Duration(milliseconds: 300), curve: Curves.easeOut)
      ..whenComplete(() {
        _controller.forward();
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: gameHasStarted ? jump : startGame,
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 29,
              child: Container(
                color: Colors.blue,
                child: Center(
                  child: Stack(
                    children: [
                      MyBird(
                        birdY: birdY,
                      ),
                      Obstacle(
                        obstacleX: obstacleX,
                        obstacleHeight: obstacleHeight,
                      ),
                      Container(
                        alignment: Alignment(0, -0.4),
                        child: Text(
                          gameHasStarted ? '' : 'T A P  TO  V A A G H A',
                          style: TextStyle(
                              color: Colors.orangeAccent,
                              fontSize: 20,
                              backgroundColor: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
