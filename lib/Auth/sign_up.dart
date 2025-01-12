import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'authentication.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  Color? _emailBorderColor;
  Color? _passwordBorderColor; // incase of mismatched passwords
  Color? _confirmPasswordBorderColor;
  final _emailTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  final _confirmPasswordTextController = TextEditingController();
  final Authentication _signUp = Authentication();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailBorderColor = Colors.green.shade100;
    _passwordBorderColor =
        Colors.green.shade100; // incase of mismatched passwords
    _confirmPasswordBorderColor = Colors.green.shade100;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.75,
              child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                double fontSize = constraints.maxWidth > 600 ? 34 : 24;
                return Center(
                  child: Text('Ready to watch?',
                      style: GoogleFonts.montserrat(
                        fontSize: fontSize,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      )),
                );
              }),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 5.0, right: 5.0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.75,
                child: LayoutBuilder(builder:
                    (BuildContext context, BoxConstraints constraints) {
                  double fontSize = constraints.maxWidth > 600 ? 24 : 14;
                  return Text(
                    'Enter your email to create or sign in to your account.',
                    style: GoogleFonts.montserrat(
                      fontSize: fontSize,
                      color: Color(0xfff646161),
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.center,
                  );
                }),
              ),
            ),
            _textFields('Email', _emailTextController, _emailBorderColor, 50.0),
            _textFields('Password', _passwordTextController,
                _passwordBorderColor, 15.0),
            _textFields('Confirm Password', _confirmPasswordTextController,
                _confirmPasswordBorderColor, 15.0),
            Padding(
              padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 25.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: OutlinedButton(
                  onPressed: () {
                    if (_passwordTextController.text !=
                        _confirmPasswordTextController.text) {
                      setState(() {
                        _passwordBorderColor = Color(0xfffC60A0A);
                        _confirmPasswordBorderColor = Color(0xfffC60A0A);
                        Fluttertoast.showToast(
                          msg: 'Password Mismatch Alert!',
                          toastLength: Toast.LENGTH_LONG,
                          gravity: ToastGravity.SNACKBAR,
                          backgroundColor: Colors.black54,
                          textColor: Colors.white,
                          fontSize: 14.0,
                        );
                      });
                    } else {
                      setState(() {
                        _passwordBorderColor = Colors.green.shade100;
                        _confirmPasswordBorderColor = Colors.green.shade100;
                        _signUp.registerUser(context, _emailTextController.text, _passwordTextController.text);
                      });
                    }
                  },
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.white, // text color
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(12.0), // Rounded corners
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: 12.0,
                    ),
                    // Padding
                    backgroundColor: Color(0xfffC60A0A), // Background color
                  ),
                  child: Text(
                    'GET STARTED',
                    style: GoogleFonts.montserrat(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _textFields(text, textController, color, topPadding) {
    return Padding(
      padding: EdgeInsets.only(left: 30.0, right: 30.0, top: topPadding),
      child: TextField(
        controller: textController,
        maxLines: 2,
        style: GoogleFonts.montserrat(
          fontSize: 14,
          color: Color(0xfff646161),
          fontWeight: FontWeight.w400,
        ),
        decoration: InputDecoration(
          hintText: text,
          hintStyle: GoogleFonts.montserrat(
            fontSize: 14,
            color: Color(0xfff646161),
            fontWeight: FontWeight.w400,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: BorderSide(color: color, width: 2.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: BorderSide(color: color, width: 2.0),
          ),
          filled: true,
          fillColor: Colors.white,
        ),
      ),
    );
  }
}
