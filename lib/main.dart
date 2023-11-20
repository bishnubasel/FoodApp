// import 'package:flutter/material.dart';
// import 'package:profile_app/pages/home_page.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(primarySwatch: Colors.blue),
//       home: const HomemPage(),
//     );
//   }
// }
// //

//import 'package:firebase_core/firebase_core.dart';
//import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';
//import 'package:profile_app/animation_b.dart';
//import 'package:profile_app/colorfull.dart';
//import 'package:profile_app/components/models/coffe_shop.dart';
//import 'package:profile_app/firebase_options.dart';
//import 'package:profile_app/components/my_button.dart';
//import 'package:profile_app/drawer.dart';
//import 'package:profile_app/game_page.dart';
//import 'package:profile_app/animation.dart';
//import 'package:profile_app/login_page.dart';
//mport 'package:profile_app/pages/auth_page.dart';
//import 'package:profile_app/money/ghar_page.dart';
//import 'package:profile_app/pages/home_page.dart';
//import 'package:profile_app/pages_of_coffee/coffeepage.dart';
//import 'package:provider/provider.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
//   );
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       providers: [
//         ChangeNotifierProvider(
//           create: (context) => CoffeShop(),
//           builder: (context, child) => MaterialApp(
//             debugShowCheckedModeBanner: false,
//             home:LoginPage(),
//           ),
//         ),
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:profile_app/homepage.dart';
import 'package:profile_app/pages/shop_page.dart';
import 'package:profile_app/stock.dart';
import 'package:profile_app/themes/light_mode.dart';

//import 'gameboard.dart';
//import 'pageMinimal/intro_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Stock",
      home: HomePage(),
    );
  }
}
