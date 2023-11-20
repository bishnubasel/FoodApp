import 'package:flutter/material.dart';
import 'package:profile_app/components/bottom_nav_bar.dart';
import 'package:profile_app/const.dart';
import 'package:profile_app/pagess/first_page.dart';
import 'package:profile_app/pagess/second_pages.dart';
import 'package:profile_app/pagess/third_pages.dart';
import '../pages/shop_page.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.lightGreenAccent[20],
          child: ListView(
            children: [
              Container(
                  child: Image.asset(
                'images/shop.jpg',
              )),
              DrawerHeader(
                child: Column(
                  children: [
                    // Text(
                    //   'L O G O',
                    //   textAlign: TextAlign.left,
                    //   style: TextStyle(fontSize: 30),
                    // ),
                    ElevatedButton(onPressed: () {}, child: Text('Login'))
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text(
                  'Page 1',
                  style: TextStyle(fontSize: 15),
                ),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => FirstPage()));
                },
              ),
              ListTile(
                leading: Icon(Icons.icecream_outlined, color: Colors.lime),
                title: Text(
                  'Page 2',
                  style: TextStyle(fontSize: 15),
                ),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SecondPage()));
                },
              ),
              ListTile(
                leading: Icon(Icons.remove_red_eye_sharp, color: Colors.blue),
                title: Text(
                  'Page 3',
                  style: TextStyle(fontSize: 15),
                ),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ThirdPage()));
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.window_sharp,
                  color: Colors.red,
                ),
                title: Text(
                  'Page 4',
                  style: TextStyle(fontSize: 15),
                ),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ThirdPage()));
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.swap_vertical_circle,
                  color: Colors.pink,
                ),
                title: Text(
                  'page 5',
                  style: TextStyle(fontSize: 15),
                ),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => FirstPage()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
