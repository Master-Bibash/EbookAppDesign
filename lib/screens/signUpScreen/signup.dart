import 'package:bookeapps/screens/signUpScreen/signupbody.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
static String routeName="\sign";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SignUpBody(),
    );
  }
}