import 'package:bookeapps/screens/loginscreen/body.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static String routeName="\login";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: loginbody(),
    );
  }
}