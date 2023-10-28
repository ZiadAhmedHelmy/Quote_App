import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:api_app/Screens/homePage.dart';
import 'package:api_app/utils/appColor.dart';
import 'package:flutter/material.dart';
class splashScreen extends StatelessWidget {
  const splashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      animationDuration: const Duration(seconds: 2),
      backgroundColor: AppColor.backG,
      splash: CircleAvatar(
        backgroundColor: AppColor.blue,
        radius: 50,
        child: Image.asset("assets/images/icons8-quote-100.png"),
      ),
      nextScreen: homePage(),
      splashTransition: SplashTransition.fadeTransition,
    );
  }
}
