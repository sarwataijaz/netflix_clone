import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/main_menu.dart';
import 'package:page_transition/page_transition.dart';


class Authentication extends StatefulWidget {
  const Authentication({super.key});

  @override
  State<Authentication> createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
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
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 50.0),
            child: TextField(
              maxLines: 2,
              decoration: InputDecoration(
                hintText: 'Email or phone number',
                hintStyle: GoogleFonts.montserrat(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide:
                      BorderSide(color: Colors.grey, width: 2.0),
                ),
                filled: true,
                fillColor: Color(0xfff656060),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0),
              child: TextField(
               maxLines: 2,
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: GoogleFonts.montserrat(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide:
                    BorderSide(color: Colors.grey, width: 2.0),
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
                onPressed: () {
                  Navigator.pushReplacement( // replaces current route with new route
                    context,
                    PageTransition(
                      type: PageTransitionType.leftToRight,
                      duration: Duration(milliseconds: 1000),
                      child: MainScreen(),
                    ),
                  );
                },
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white, // text color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    side: BorderSide(color: Colors.white, width: 3.0)
                  ),
                  padding: EdgeInsets.symmetric(vertical: 12.0, ),
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
              child: Text(
                'New to Netflix? Sign up now.',
                style: GoogleFonts.montserrat(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
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
    );
  }
}
