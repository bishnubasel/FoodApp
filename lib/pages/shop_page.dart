import 'package:flutter/material.dart';
import 'package:profile_app/components/coffee_tile.dart';
import 'package:profile_app/components/models/coffe_shop.dart';
import 'package:profile_app/components/models/coffee.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  //add coffee to cart
  void addToCart(Coffee coffee) {
    //add to cart
    Provider.of<CoffeShop>(context, listen: false).addItemToCart(coffee);
    //let user know it add been successfully added
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Successfully added to cart"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeShop>(
        builder: (context, value, child) => SafeArea(
                child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  //heading message
                  Row(
                    children: [
                      GestureDetector(child: Icon(Icons.menu)),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'How would you like your coffee ?',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  //list of coffee to buy
                  Expanded(
                    child: ListView.builder(
                      itemCount: value.CoffeeShop.length,
                      itemBuilder: (context, index) {
                        // get indivudual coffee
                        Coffee eachCoffee = value.CoffeeShop[index];

                        //return the tile for this coffee
                        return CoffeeTile(
                          coffee: eachCoffee,
                          icon: Icon(Icons.add),
                          onPressed: () => addToCart(eachCoffee),
                        );
                      },
                    ),
                  )
                ],
              ),
            )));
  }
}
