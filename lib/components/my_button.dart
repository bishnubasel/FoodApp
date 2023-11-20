// import 'dart:io';

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class MyButton extends StatelessWidget {
//   final Function()? onTap;
//   const MyButton({super.key, required this.onTap});

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         padding: EdgeInsets.all(10),
//         margin: EdgeInsets.symmetric(horizontal: 210),
//         decoration: BoxDecoration(color: Colors.grey),
//         child: Center(
//           child: Text(
//             "Sign In",
//             style: TextStyle(
//                 color: Colors.black,
//                 fontStyle: FontStyle.italic,
//                 fontWeight: FontWeight.w500,
//                 fontSize: 16),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final void Function()? onTap;
  final Widget child;

  const MyButton({super.key, required this.onTap, required this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: child,
      ),
    );
  }
}
