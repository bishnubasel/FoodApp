import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;

  MyBottomNavBar({
    super.key,
    required this.onTabChange,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25),
      child: GNav(
        onTabChange: (value) => onTabChange!(value),
        iconSize: double.negativeInfinity,
        color: Colors.deepPurpleAccent,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        activeColor: Colors.black,
        tabBorderRadius: 500,
        tabBackgroundColor: Colors.white,
        curve: Curves.easeInSine,
        tabActiveBorder: Border.all(color: Colors.pink, width: 6),
        tabs: [
          GButton(
            iconSize: 25,
            icon: Icons.home,
            text: 'shop',
          ),
        ],
      ),
    );
  }
}
