import 'package:flutter/material.dart';
import 'package:profile_app/const.dart';

class MyBird extends StatelessWidget {
  final double birdY;

  MyBird({required this.birdY});

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, birdY),
      child: Container(
        height: 400,
        width: 70,
        child: Image.asset('images/jj.png'), // Use an image for the bird
      ),
    );
  }
}
