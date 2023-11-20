// import 'package:flutter/material.dart';
// import 'package:profile_app/widget/card_widget.dart';
// import '../core/constants.dart';

// class HomemPage extends StatelessWidget {
//   const HomemPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Flutter Mapp'),
//       ),
//       body: Row(
//         children: [
//           const CarWidget(
//             title: 'Mario',
//             imagepath: 'images/mario.png',
//           ),
//           SizedBox(
//             height: kDouble5,
//           ),
//           const CarWidget(
//             title: 'Mario',
//           ),
//           Row(
//             children: [
//               SizedBox(height: KDouble10),
//               const CarWidget(
//                 title: 'Mario',
//               ),
//               Row(
//                 children: [
//                   SizedBox(height: kDouble5, width: 50),
//                   const CarWidget(
//                     title: 'Mario',
//                   ),
//                 ],
//               )
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final user = FirebaseAuth.instance.currentUser!;

  //sign user out method
  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: signUserOut,
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: Center(
        child: Text(
          "LOGGED IN AS:" + user.email!,
          style: TextStyle(fontSize: 17),
        ),
      ),
    );
  }
}
