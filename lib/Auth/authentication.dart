import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/Auth/sign_in.dart';
import 'package:page_transition/page_transition.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../whos_watching_screen.dart';

class Authentication {
  String msg = '';

  Future verifyCredentials(
      BuildContext context, emailText, passwordText) async {
    if (emailText.isNotEmpty && passwordText.isNotEmpty) {
      try {
        await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailText.trim(),
          password: passwordText.trim(),
        );
        Future.delayed(const Duration(seconds: 3), () {
          Navigator.pushReplacement(
            // replaces current route with new route
            context,
            PageTransition(
              type: PageTransitionType.rightToLeft,
              duration: Duration(milliseconds: 800),
              child: Watching_Screen(),
            ),
          );
        });
      } on FirebaseAuthException catch (e) {
        if (e.code == 'INVALID_LOGIN_CREDENTIALS') {
          msg = 'Invalid login credentials.';
        } else {
          msg = e.code;
        }
      }
      Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.SNACKBAR,
        backgroundColor: Colors.black54,
        textColor: Colors.white,
        fontSize: 14.0,
      );
    } else {
      Fluttertoast.showToast(
        msg: 'Please fill out both fields!',
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.SNACKBAR,
        backgroundColor: Colors.black54,
        textColor: Colors.white,
        fontSize: 14.0,
      );
    }
  }

  Future registerUser(BuildContext context, emailText, passwordText) async {
    if (emailText.isNotEmpty && passwordText.isNotEmpty) {
      try {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailText.trim(),
          password: passwordText.trim(),
        );
        Future.delayed(const Duration(seconds: 3), () {
          msg = 'success';
          Navigator.pushReplacement(
            // replaces current route with new route
            context,
            PageTransition(
              type: PageTransitionType.leftToRight,
              duration: Duration(milliseconds: 100),
              child: SignIn(),
            ),
          );
        });
      } on FirebaseAuthException catch (e) {
        // Handle specific Firebase errors
        if (e.code == 'weak-password') {
          msg = 'The password provided is too weak.';
        } else if (e.code == 'email-already-in-use') {
          msg = 'The email is already in use.';
        } else if (e.code == 'invalid-email') {
          msg = 'The email address is invalid.';
        } else {
          msg = 'An unexpected error occurred: ${e.message}';
        }
      }
      Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.SNACKBAR,
        backgroundColor: Colors.black54,
        textColor: Colors.white,
        fontSize: 14.0,
      );
    } else {
      Fluttertoast.showToast(
        msg: 'Please fill out both fields!',
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.SNACKBAR,
        backgroundColor: Colors.black54,
        textColor: Colors.white,
        fontSize: 14.0,
      );
    }
  }
}
