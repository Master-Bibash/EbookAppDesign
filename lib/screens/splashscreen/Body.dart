import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:bookeapps/screens/introscreen/introscreen.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: Transform.scale(
                scale: 2.2, // Adjust the scale factor as needed
                child: AnimatedSplashScreen(
                  splash: Image.asset(
                    "assets/images/logo/logo.png",
                    // "assets/images/stocks/1.png"
                  ),
                  nextScreen: IntroScreen(),
                  splashTransition: SplashTransition.sizeTransition,
                  backgroundColor: Color(0xFFEF9A9A),
                  duration: 1000,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 50),
              height: 50, // Adjust the height as needed
              child: Center(
                child: Text(
                  "E-Book",
                  style: TextStyle(
                    color: Colors.pink,
                    fontSize: 44,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontFamily: AutofillHints.impp
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
