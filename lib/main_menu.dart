import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: Padding(
            padding: EdgeInsets.only(left: 20.0, top: 5.0, bottom: 5.0),
            child: Image.asset(
              'assets/netflix_n.png',
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(left: 20.0, top: 5.0, bottom: 5.0),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 30,
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5.0, bottom: 5.0, right:20),
              child: Image.asset(
                'assets/person_1.png',
                width: 30,
                height: 30,
              )
            ),
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: screenWidth * 0.3,
                    height: 35,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        'TV Shows',
                        style: GoogleFonts.montserrat(
                            fontSize: 45,
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: screenWidth * 0.3,
                    height: 35,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        'Movies',
                        style: GoogleFonts.montserrat(
                            fontSize: 45,
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: screenWidth * 0.3,
                    height: 35,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        'Categories',
                        style: GoogleFonts.montserrat(
                            fontSize: 45,
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: screenWidth * 0.75,
                  height: screenHeight * 0.45,
                  child: Image.asset(
                    'assets/movie1.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: screenWidth * 0.2,
                    height: 32,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        'Charming',
                        style: GoogleFonts.montserrat(
                            fontSize: 43,
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: screenWidth * 0.2,
                    height: 32,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        'Feel-Good',
                        style: GoogleFonts.montserrat(
                            fontSize: 43,
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: screenWidth * 0.2,
                    height: 32,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        'Dramedy',
                        style: GoogleFonts.montserrat(
                            fontSize: 43,
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: screenWidth * 0.2,
                    height: 30,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        'Movie',
                        style: GoogleFonts.montserrat(
                            fontSize: 43,
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        ),
    );
  }
}
