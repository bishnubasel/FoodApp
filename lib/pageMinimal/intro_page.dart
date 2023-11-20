import 'dart:html';

import 'package:flutter/material.dart';
import 'package:profile_app/components/my_button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
//logo
          Icon(
            Icons.shopping_bag,
            size: 72,
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
          const SizedBox(height: 25),

          //title
          Text(
            "Minimal Shop",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(height: 10),

//subtitle
          Text(
            "premium quality Products",
            style: TextStyle(
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),

          //button
          MyButton(
            onTap: () => Navigator.pushNamed(context, '/shop_page'),
            child: Icon(Icons.arrow_forward),
          )
        ],
      ),
    );
  }
}
