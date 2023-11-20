// import 'dart:html';

// import 'package:flutter/material.dart';
// import 'package:profile_app/const.dart';
// import 'package:profile_app/pages/my_list_tile.dart';

// import 'package:profile_app/util/my_card.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// import '../util/my_button.dart';

// class GharPage extends StatefulWidget {
//   const GharPage({super.key});

//   @override
//   State<GharPage> createState() => _GharPageState();
// // 

// class _GharPageState extends State<GharPage> {
//   //pagecontroller
//   final _controller = PageController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color.fromRGBO(224, 224, 224, 1),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {},
//         backgroundColor: Colors.pink,
//         child: Icon(Icons.monetization_on_outlined, color: Colors.white),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       bottomNavigationBar: BottomAppBar(
//         child: Padding(
//           padding: const EdgeInsets.only(top: 25.0),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               IconButton(
//                 onPressed: () {},
//                 icon: Icon(
//                   Icons.home,
//                   color: Colors.blue,
//                   size: 35,
//                 ),
//               ),
//               IconButton(
//                 onPressed: () {},
//                 icon: Icon(
//                   Icons.settings,
//                   color: Colors.blue,
//                   size: 35,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               // app Bar
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 8.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Row(
//                       children: [
//                         Text(
//                           'My',
//                           style: TextStyle(
//                               fontSize: 28, fontWeight: FontWeight.bold),
//                         ),
//                         Text(
//                           'cards',
//                           style: TextStyle(
//                             fontSize: 28,
//                           ),
//                         ),
//                       ],
//                     ),

//                     //plus button
//                     Container(
//                         padding: EdgeInsets.all(8),
//                         decoration: BoxDecoration(
//                           color: Colors.grey[400],
//                           shape: BoxShape.circle,
//                         ),
//                         child: Icon(Icons.add)),
//                   ],
//                 ),
//               ),

//               SizedBox(height: 25),

//               //cards
//               SingleChildScrollView(
//                 child: Container(
//                   height: 200,
//                   child: ListView(
//                     scrollDirection: Axis.horizontal,
//                     controller: _controller,
//                     children: [
//                       MyCard(
//                           balance: 5250.20,
//                           cardNumber: 12345678,
//                           expiryMonth: 10,
//                           expiryYear: 24,
//                           color: Colors.yellow[400]),
//                       MyCard(
//                           balance: 342.23,
//                           cardNumber: 12345678,
//                           expiryMonth: 11,
//                           expiryYear: 23,
//                           color: Colors.blue),
//                       MyCard(
//                           balance: 420.42,
//                           cardNumber: 12345678,
//                           expiryMonth: 8,
//                           expiryYear: 24,
//                           color: Colors.green),
//                     ],
//                   ),
//                 ),
//               ),

//               SizedBox(height: 25),

//               SmoothPageIndicator(
//                 controller: _controller,
//                 count: 3,
//                 effect:
//                     ExpandingDotsEffect(activeDotColor: Colors.grey.shade800),
//               ),

//               SizedBox(height: 40),

//               // 3 buttons -> send + pay + bills
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 25.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     //send button
//                     MyButton(
//                       iconImagePath: 'images/dollar.png',
//                       buttonText: 'Send',
//                     ),

//                     //pay button
//                     MyButton(
//                       iconImagePath: 'shop.jpg',
//                       buttonText: 'pay',
//                     ),

//                     //bills button
//                     MyButton(
//                       iconImagePath: 'bill.png',
//                       buttonText: 'Bills',
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 40),

//               //column  -> stats + transcation
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 25),
//                 child: Column(
//                   children: [
//                     //statistics
//                     MyListTile(
//                         iconImagepath: 'images/chart.png',
//                         titleTitle: 'statisties',
//                         titleSubTitle: 'payment and Icome'),

//                     MyListTile(
//                         iconImagepath: 'images/transactions.png',
//                         titleTitle: 'Transactions',
//                         titleSubTitle: 'transaction History'),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
