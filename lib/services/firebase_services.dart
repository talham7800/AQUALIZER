import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fyp/Login.dart';
import 'package:fyp/dashboard.dart';

class AuthenticationService {
  final auth = FirebaseAuth.instance;

  //this is the function of the firebase signup fo user login
  // ignore: non_constant_identifier_names
  Signup(BuildContext context, {String? email, String? password}) async {
    try {
      await auth
          .createUserWithEmailAndPassword(
              email: email.toString(), password: password.toString())
          .then((value) =>
              //null,
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => login())));
    } on FirebaseException catch (e) {
      return AlertDialog(
        title: Text('${e.message}'),
      );
    }
  }

//this ti s the function for the user signup of the firebase
  Signin(BuildContext context, {String? email, String? password}) async {
    try {
      await auth
          .signInWithEmailAndPassword(
              email: email.toString(), password: password.toString())
          .then((value) =>
              //null,
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => dashboard())));
    } on FirebaseException catch (e) {
      return e.message;
    }
  }

  //this is the function of signout
  Future<void> Signout(BuildContext context) async {
    await auth.signOut().then((value) => Navigator.push(
        context, MaterialPageRoute(builder: (context) => login())));
  }
}
