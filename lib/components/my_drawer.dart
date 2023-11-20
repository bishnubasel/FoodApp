import 'package:flutter/material.dart';
import 'package:profile_app/pages/my_list_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(children: [
        //drawer header: logo
        DrawerHeader(
          child: Center(
            child: Icon(
              Icons.shopping_bag,
              size: 72,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
        ),

        const SizedBox(height: 25),

        //shop tile

        //cart tile

        //exit
      ]),
    );
  }
}
