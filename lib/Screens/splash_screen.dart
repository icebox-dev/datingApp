import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:gecdatingapp/screensplit/screensplit.dart';


enum PageTransitionType {
  fade,
  rightToLeft,
  leftToRight,
  upToDown,
  downToUp,
  scale,
  rotate,
  size,
  rightToLeftWithFade,
  leftToRightWithFade,
}

class SplashScreen extends StatelessWidget {




  const SplashScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 2000,
      splash: Center(
        child: Text("hiiiiiiiiiiiiiiiioo",style: TextStyle(
          fontSize: 100,
          color: Colors.red
        ),),
      ),
      nextScreen: ScreenSplit(),
      splashTransition: SplashTransition.fadeTransition,
      // pageTransitionType: PageTransitionType.scale,
    );
  }
}