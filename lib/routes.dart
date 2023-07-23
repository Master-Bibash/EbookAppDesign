
import 'package:bookeapps/screens/after%20login%20Screen/afterloginbody.dart';
import 'package:bookeapps/screens/after%20login%20Screen/afterloginscreen.dart';
import 'package:bookeapps/screens/detailsScreen/productDetails.dart';
import 'package:bookeapps/screens/detailsScreen/detailsScreen.dart';
import 'package:bookeapps/screens/introscreen/welcome.dart';
import 'package:bookeapps/screens/loginscreen/login.dart';
import 'package:bookeapps/screens/signUpScreen/signup.dart';
import 'package:bookeapps/screens/splashscreen/splash.dart';
import 'package:flutter/material.dart';

final Map<String,WidgetBuilder> routes={
  Splash.routeName:(context) => Splash(),
  WelcomePage.routeName :(context) => WelcomePage(),
  LoginScreen.routeName :(context) => LoginScreen(),
  SignUp.routeName :(context) => SignUp(), 
  // Afterlogin.routeName :(context) => Afterlogin(),
};