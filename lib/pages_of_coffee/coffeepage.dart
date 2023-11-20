import 'package:flutter/material.dart';
import 'package:profile_app/components/bottom_nav_bar.dart';
import 'package:profile_app/const.dart';
import '../pages/cart_page.dart';
import '../pages/shop_page.dart';

class CoffeePage extends StatefulWidget {
  const CoffeePage({super.key});

  @override
  State<CoffeePage> createState() => _CoffeePageState();
}

class _CoffeePageState extends State<CoffeePage> {
  //navigate bottom bar
  int _selectedIndex = 0;
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

//pages
  final List<Widget> _page = [
//shop page
    ShopPage(),

//cart page
    CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _page[_selectedIndex],
    );
  }
}
