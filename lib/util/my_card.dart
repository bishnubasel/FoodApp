import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final double balance;
  final int cardNumber;
  final int expiryMonth;
  final int expiryYear;
  final color;

  const MyCard({
    Key? key,
    required this.balance,
    required this.cardNumber,
    required this.expiryMonth,
    required this.expiryYear,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        width: 250,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Balance',
                  style: TextStyle(color: Colors.white),
                ),
                Image.asset(
                  'images/visa.png',
                  height: 50,
                )
              ],
            ),
            Text(
              '\$' + balance.toString(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //card number
                Text(
                  'carddNumber',
                  style: TextStyle(color: Colors.white),
                ),

                //card expiry date
                Text(
                  expiryMonth.toString() + '/' + expiryYear.toString(),
                  style: TextStyle(color: Colors.white),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

// class Card extends StatelessWidget {
//   final double balance;
//   final int cardNumber;
//   final int expiryMonth;
//   final int expiryYear;
//   final color;

//   const Card({
//     Key? key,
//     required this.balance,
//     required this.cardNumber,
//     required this.expiryMonth,
//     required this.expiryYear,
//     required this.color,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 25),
//       child: Container(
//         width: 250,
//         padding: EdgeInsets.all(20),
//         decoration: BoxDecoration(
//           color: Colors.deepPurple[300],
//           borderRadius: BorderRadius.circular(16),
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SizedBox(height: 10),
//             Text(
//               'Balance',
//               style: TextStyle(color: Colors.white),
//             ),
//             SizedBox(height: 10),
//             Text(
//               '\$' + balance.toString(),
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 24,
//               ),
//             ),
//             SizedBox(height: 30),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 //card number
//                 Text(
//                   'carddNumber',
//                   style: TextStyle(color: Colors.white),
//                 ),

//                 //card expiry date
//                 Text(
//                   expiryMonth.toString() + '/' + expiryYear.toString(),
//                   style: TextStyle(color: Colors.white),
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
