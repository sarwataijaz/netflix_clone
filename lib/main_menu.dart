import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  //int counter = 0;

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
              padding: EdgeInsets.only(top: 5.0, bottom: 5.0, right: 20),
              child: Image.asset(
                'assets/person_1.png',
                width: 30,
                height: 30,
              )),
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: screenWidth * 0.3,
                    height: 35,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        'TV Shows',
                        style: GoogleFonts.montserrat(
                            fontSize: 45, color: Colors.white),
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
                            fontSize: 45, color: Colors.white),
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
                            fontSize: 45, color: Colors.white),
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
                    'assets/movie.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Flexible(
                      fit: FlexFit.loose,
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: Text(
                          'Charming',
                          style: GoogleFonts.montserrat(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 10.0)),
                    Flexible(
                      fit: FlexFit.loose,
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: Text(
                          'Feel-Good',
                          style: GoogleFonts.montserrat(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 10.0)),
                    Flexible(
                      fit: FlexFit.loose,
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: Text(
                          'Dramedy',
                          style: GoogleFonts.montserrat(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 10.0)),
                    Flexible(
                      fit: FlexFit.loose,
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: Text(
                          'Movie',
                          style: GoogleFonts.montserrat(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      IconButton(
                        icon: Icon(Icons.add, color: Colors.white, size: 36),
                        onPressed: () {},
                      ),
                      Text(
                        'My List',
                        style: GoogleFonts.montserrat(
                            fontSize: 16, color: Colors.white),
                      ),
                    ],
                  ),
                  Container(
                    width: screenWidth * 0.3,
                    height: 50,
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: Icon(Icons.play_arrow,
                              color: Colors.black, size: 36),
                          onPressed: () {},
                        ),
                        FittedBox(
                          fit: BoxFit.contain,
                          child: Text(
                            'Play',
                            style: GoogleFonts.montserrat(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w800),
                          ),
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      IconButton(
                        icon: Icon(Icons.error_outline,
                            color: Colors.white, size: 36),
                        onPressed: () {},
                      ),
                      Text(
                        'My List',
                        style: GoogleFonts.montserrat(
                            fontSize: 16, color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
              moviesList('Release in the Past Year', 0),
              moviesList('Continue Watching for Sarwat', 6),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        // Highlight the current tab
        onTap: (index) {
          setState(() {
            _currentIndex = index; // Update current index
          });
        },
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 13,
        ),
        unselectedLabelStyle: TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.normal,
          fontSize: 13,
        ),
        type: BottomNavigationBarType.fixed,
        // Use fixed type to make sure all items fit
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.play_circle_outline,
            ),
            label: 'New & Hot',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.downloading_outlined),
            label: 'Downloads',
          ),
        ],
      ),
    );
  }

  Widget moviesList(String text, int counter) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              text,
              style: GoogleFonts.montserrat(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: SizedBox(
              height: 150,
              child: ListView.builder(
                itemCount: 6,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Image.asset(
                    width: 120,
                    'assets/movie${counter++ + 1}.png',
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
