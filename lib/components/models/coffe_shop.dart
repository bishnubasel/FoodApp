import 'package:flutter/material.dart';

import 'coffee.dart';

class CoffeShop extends ChangeNotifier {
//coffe for sale list
  final List<Coffee> _shop = [
    //back coffe
    Coffee(
      name: 'long black',
      price: '10.80',
      imagepath: "images/coffe_lover.jpg",
    ),

    //latte
    Coffee(
      name: 'latte',
      price: '10.20',
      imagepath: "images/latte.jpg",
    ),

    //espresso
    Coffee(
      name: 'espresso',
      price: "10.30",
      imagepath: "images/expresso.jpg",
    ),

    //ice coffe
    Coffee(
      name: 'ice coffee',
      price: "10.20",
      imagepath: "images/cold_coffee.jpg",
    ),
  ];

//user cart
  List<Coffee> _userCart = [];

//get coffee list
  List<Coffee> get CoffeeShop => _shop;

//get user cart
  List<Coffee> get userCart => _userCart;

//add item to cart
  void addItemToCart(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }

//remove item from cart
  void removeItemFromCart(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }
}
