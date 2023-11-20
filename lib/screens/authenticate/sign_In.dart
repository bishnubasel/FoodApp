// import 'package:flutter/material.dart';
// import 'package:profile_app/services/auth.dart';

// class SignIn extends StatefulWidget {
//   const SignIn({super.key});

//   @override
//   State<SignIn> createState() => _SignInState();
// }

// class _SignInState extends State<SignIn> {
//   final Authservice _auth = Authservice();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.brown[100],
//       appBar: AppBar(
//         backgroundColor: Colors.brown[400],
//         elevation: 0.0,
//         title: Text('sign in to Brew Crew'),
//       ),
//       body: Container(
//         padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
//         child: ElevatedButton(
//             onPressed: () async {
//              dynamic result = await _auth.signInAnon();
//               if (result == null) {
//                print('error signing in');
//               } else {
//                 print('signed in');
//                 print(result.uid);
//               }
//             },
//             child: Text('sign in anon')),
//       ),
//     );
//   }
// }

