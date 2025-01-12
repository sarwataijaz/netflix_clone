import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'dart:ui'; // Import this for ImageFilter
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/Auth/sign_in.dart';
import 'package:page_transition/page_transition.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 0.75;
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Container(
                height: height,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(5.0)),
                child: Stack(
                  children: [
                    Swiper(
                      itemBuilder: (context, index) {
                        return Image.asset('assets/display${index + 1}.jpg',
                            height: height);
                      },
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      pagination: const SwiperPagination(),
                    ),
                    Positioned(
                      top: height / 1.2,
                      // Place it below the half of the screen
                      left: 0,
                      right: 0,
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: height,
                        color: Colors.black45,

                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Text(
                    'Unlimited entertainment on low price.',
                    style: GoogleFonts.montserrat(
                      fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
              ),
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                      onPressed: (){
                        Navigator.pushReplacement( // replaces current route with new route
                          context,
                          PageTransition(
                            type: PageTransitionType.rightToLeft,
                            duration: Duration(milliseconds: 800),
                            child: SignIn(),
                          ),
                        );
                      },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white, // text color
                      shape: RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius.zero, // Rounded corners
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
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.07,
                )
              ],
            )
          ],
        ));
  }
}
