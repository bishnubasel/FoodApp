// import 'package:firebase_auth/firebae';
// -auth
// class AuthService {
//   final FirebaseAuth _auth = FirebaseAuth.instance;

//   // Create a User object based on UserCredential
  
//   User _userFromFirebaseUser(UserCredential user) {
//     return user != null ? user. null;
//   }

  
//   //sign in anonymously
//   Future<User> signInAnon() async {
//     try {
//       UserCredential result = await _auth.signInAnonymously();
//       User user = _userFromFirebaseUser(result);
//       return user;
//     } catch (e) {
//       print(e.toString());
//       return null;
//     }
//   }
// }
