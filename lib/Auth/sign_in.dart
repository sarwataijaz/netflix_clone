import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/Auth/sign_up.dart';
import 'package:page_transition/page_transition.dart';
import 'authentication.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _emailTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  final Authentication _signIn = Authentication();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Row(
          children: [
            Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 24,
            ),
            Image.asset(
              'assets/netflix_title.png',
              width: 124,
              height: 31,
            )
          ],
        ),
        leadingWidth: 150,
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 50.0),
              child: TextField(
                maxLines: 1,
                style: GoogleFonts.montserrat(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                controller: _emailTextController,
                decoration: InputDecoration(
                  hintText: 'Email or phone number',
                  hintStyle: GoogleFonts.montserrat(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                    contentPadding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide(color: Colors.grey, width: 2.0),
                  ),
                  filled: true,
                  fillColor: Color(0xfff656060),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0),
              child: TextField(
                maxLines: 1,
                style: GoogleFonts.montserrat(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                obscureText: true,
                controller: _passwordTextController,
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: GoogleFonts.montserrat(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                  labelStyle: GoogleFonts.montserrat(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide(color: Colors.grey, width: 2.0),
                  ),
                  filled: true,
                  fillColor: Color(0xfff656060),
                  // contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 25.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: OutlinedButton(
                  onPressed: () => _signIn.verifyCredentials(
                      context, _emailTextController.text, _passwordTextController.text),
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.white, // text color
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        side: BorderSide(color: Colors.white, width: 3.0)),
                    padding: EdgeInsets.symmetric(
                      vertical: 12.0,
                    ),
                    // Padding
                    backgroundColor: Colors.black, // Background color
                  ),
                  child: Text(
                    'Sign In',
                    style: GoogleFonts.montserrat(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 50.0),
              child: Center(
                child: Text(
                  'Need help?',
                  style: GoogleFonts.montserrat(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 25.0),
              child: Center(
                child: RichText(
                  text: TextSpan(
                      text: 'New to Netflix?',
                      style: GoogleFonts.montserrat(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                        TextSpan(
                            text: ' Sign up now.',
                            style: GoogleFonts.montserrat(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.leftToRight,
                                    duration: Duration(milliseconds: 800),
                                    child: SignUp(),
                                  ),
                                );
                              }),
                      ]),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 50.0),
              child: Center(
                child: Text(
                  textAlign: TextAlign.center,
                  'Sign in is protected by Google \n reCAPTCHA to ensure you\'re not a bot. \n Learn more.',
                  style: GoogleFonts.montserrat(
                    fontSize: 14,
                    color: Color(0xfffFFFCFC),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

// Future _verifyCredentials() async {
//   String msg = '';
//
//   if (_emailTextController.text.isNotEmpty && _passwordTextController.text.isNotEmpty) {
//     try {
//       await FirebaseAuth.instance.signInWithEmailAndPassword(
//         email: _emailTextController.text.trim(),
//         password: _passwordTextController.text.trim(),
//       );
//       Future.delayed(const Duration(seconds: 3), () {
//         print('success');
//         Navigator.pushReplacement( // replaces current route with new route
//           context,
//           PageTransition(
//             type: PageTransitionType.leftToRight,
//             duration: Duration(milliseconds: 100),
//             child: Watching_Screen(),
//           ),
//         );
//       });
//     } on FirebaseAuthException catch (e) {
//       if (e.code == 'INVALID_LOGIN_CREDENTIALS') {
//         msg = 'Invalid login credentials.';
//       } else {
//         msg = e.code;
//       }
//     }
//
//   } else {
//     Fluttertoast.showToast(
//       msg: 'Please fill out both fields!',
//       toastLength: Toast.LENGTH_LONG,
//       gravity: ToastGravity.SNACKBAR,
//       backgroundColor: Colors.black54,
//       textColor: Colors.white,
//       fontSize: 14.0,
//     );
//   }
// }
}
