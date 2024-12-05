import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/main_menu.dart';
import 'package:page_transition/page_transition.dart';

class Watching_Screen extends StatefulWidget {
  const Watching_Screen({super.key});

  @override
  State<Watching_Screen> createState() => _Watching_ScreenState();
}

class _Watching_ScreenState extends State<Watching_Screen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery
        .of(context)
        .size
        .width;
    double screenHeight = MediaQuery
        .of(context)
        .size
        .height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Image.asset(
            'assets/netflix_title.png',
            width: screenWidth * 0.4,
            height: screenHeight * 0.4,
          ),
        ),
      ),
      backgroundColor: Colors.black,
      body: Container(
        height: screenHeight,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: screenHeight * 0.11,
            ),
            Center(
              child: SizedBox(
                width: screenWidth * 0.5,
                height: 45,
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    'Who\'s Watching?',
                    style: GoogleFonts.montserrat(
                        fontSize: 45, color: Colors.white),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 170,
                    width: 170,
                    child: Column(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: 20.0, right: 20.0, top: 20.0),
                            child: InkWell(
                              onTap: () {
                                Navigator.pushReplacement(
                                  // replaces current route with new route
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.leftToRight,
                                    duration: Duration(milliseconds: 1000),
                                    child: MainScreen(),
                                  ),
                                );
                              },
                              child: Image.asset(
                                'assets/person_1.png',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 20.0, right: 20.0, top: 10.0, bottom: 20.0),
                          child: Center(
                            child: SizedBox(
                              width: screenWidth * 0.25,
                              height: 25,
                              child: FittedBox(
                                fit: BoxFit.contain,
                                child: Text(
                                  'Person 1',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 25, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 170,
                    height: 170,
                    child: Column(
                      children: [
                        Expanded(
                          //  fit: FlexFit.loose,
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: 20.0, right: 20.0, top: 20.0),
                            child: Image.asset(
                              'assets/person_2.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 20.0, right: 20.0, top: 10.0, bottom: 20.0),
                          child: Center(
                            child: SizedBox(
                              width: screenWidth * 0.25,
                              height: 25,
                              child: FittedBox(
                                fit: BoxFit.contain,
                                child: Text(
                                  'Person 2',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 25, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 170,
                    width: 170,
                    child: Column(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: 20.0, right: 20.0, top: 20.0),
                            child: InkWell(
                              onTap: () {
                                Navigator.pushReplacement(
                                  // replaces current route with new route
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.leftToRight,
                                    duration: Duration(milliseconds: 1000),
                                    child: MainScreen(),
                                  ),
                                );
                              },
                              child: Image.asset(
                                'assets/person_3.png',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 20.0, right: 20.0, top: 10.0, bottom: 20.0),
                          child: Center(
                            child: SizedBox(
                              width: screenWidth * 0.25,
                              height: 25,
                              child: FittedBox(
                                fit: BoxFit.contain,
                                child: Text(
                                  'Person 3',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 25, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 170,
                    height: 170,
                    child: Column(
                      children: [
                        Expanded(
                          //  fit: FlexFit.loose,
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: 20.0, right: 20.0, top: 20.0),
                            child: Image.asset(
                              'assets/person_4.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 20.0, right: 20.0, top: 10.0, bottom: 20.0),
                          child: Center(
                            child: SizedBox(
                              width: screenWidth * 0.25,
                              height: 25,
                              child: FittedBox(
                                fit: BoxFit.contain,
                                child: Text(
                                  'Person 4',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 25, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 170,
                    width: 170,
                    child: Column(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: 20.0, right: 20.0, top: 20.0),
                            child: InkWell(
                              onTap: () {
                                Navigator.pushReplacement(
                                  // replaces current route with new route
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.leftToRight,
                                    duration: Duration(milliseconds: 1000),
                                    child: MainScreen(),
                                  ),
                                );
                              },
                              child: Image.asset(
                                'assets/person_5.png',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 20.0, right: 20.0, top: 10.0, bottom: 20.0),
                          child: Center(
                            child: SizedBox(
                              width: screenWidth * 0.25,
                              height: 25,
                              child: FittedBox(
                                fit: BoxFit.contain,
                                child: Text(
                                  'Person 5',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 25, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 170,
                    height: 170,
                    child: Column(
                      children: [
                        Expanded(
                          //  fit: FlexFit.loose,
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: 20.0, right: 20.0, top: 20.0),
                            child: Container(
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
