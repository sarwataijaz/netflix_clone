import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/authentication.dart';
import 'package:page_transition/page_transition.dart';

class ReadyToWatch extends StatefulWidget {
  const ReadyToWatch({super.key});

  @override
  State<ReadyToWatch> createState() => _ReadyToWatchState();
}

class _ReadyToWatchState extends State<ReadyToWatch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.12,
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
            Padding(
              padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 50.0),
              child: TextField(
                maxLines: 2,
                decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle: GoogleFonts.montserrat(
                    fontSize: 14,
                    color: Color(0xfff646161),
                    fontWeight: FontWeight.w400,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide:
                        BorderSide(color: Colors.green.shade100, width: 2.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide:
                        BorderSide(color: Colors.green.shade600, width: 2.0),
                  ),
                  filled: true,
                  fillColor: Colors.white,
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
                        child: Authentication(),
                      ),
                    );
                  },
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.white, // text color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0), // Rounded corners
                    ),
                    padding: EdgeInsets.symmetric(vertical: 12.0, ),
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
}
