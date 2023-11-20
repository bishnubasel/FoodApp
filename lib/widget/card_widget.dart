import 'package:flutter/material.dart';
import 'package:profile_app/core/constants.dart';

class CarWidget extends StatelessWidget {
  const CarWidget({
    super.key,
    required this.title,
    this.imagepath,
  });
  final String title;
  final String? imagepath;

  @override
  Widget build(BuildContext context) {
    return (Card(
      color: Colors.black,
      child: Container(
        padding: EdgeInsets.all(8.0),
        height: 300,
        width: 150,
        child: Column(
          children: [
            Image.asset(imagepath!),
            Text(
              'Mario Game PNG',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.purpleAccent),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                'Res: 1080*1879',
                style: TextStyle(fontSize: 10, color: Colors.white60),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
