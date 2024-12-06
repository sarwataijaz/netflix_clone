import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:netflix_clone/ready_to_watch.dart';
import 'package:netflix_clone/whos_watching_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'main_menu.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {

  late AnimationController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(vsync:this);
    _controller.addStatusListener((status) { // track changes in animation

      if (status == AnimationStatus.completed) {
        Navigator.pushReplacement( // replaces current route with new route
          context,
          PageTransition(
            type: PageTransitionType.leftToRight,
            duration: Duration(milliseconds: 1000),
            child: ReadyToWatch(),
          ),
        );
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Lottie.asset(
          'assets/netflix.json',
          width: screenWidth * 0.5,
          height: screenHeight * 0.3,
          controller: _controller,
          onLoaded: (composition) {
            _controller.duration = composition.duration * 1.1;
            _controller.forward();
          }
        ),
      )
    );
  }
}
