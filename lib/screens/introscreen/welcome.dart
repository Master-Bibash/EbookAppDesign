import 'package:bookeapps/screens/loginscreen/body.dart';
import 'package:bookeapps/screens/signUpScreen/signup.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  static String routeName = "/welcome";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Image.asset(
                  "assets/images/logo/logo.png",
                  width: double.infinity,
                  height: 300,
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 50),
                width: double.infinity,
                // height: 469,
                decoration: BoxDecoration(
                    color: Color(0xFFEF9A9A),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(70),
                        topRight: Radius.circular(70))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 17),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          "Welcome",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 29,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 30),
                      Text(
                        "In the 2000s, there was a trend of print and e-book sales moving to the Internet,where readers buy traditional paper books and e-books on websites using e-commerce systems. With print books, readers are increasingly browsing through images of the covers of books on publisher or bookstore websites and selecting and ordering titles online",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            // color: Colors.black,
                            width: 150,
                            height: 90,
                            margin: EdgeInsets.only(left: 10),
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => loginbody()));
                                },
                                child: Text(
                                  'Log In',
                                  style: TextStyle(
                                      color: Colors.white,
                                      decorationColor: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                style: ElevatedButton.styleFrom(
                                    shape: StadiumBorder(),
                                    primary: Colors.black),
                              ),
                            ),
                          ),
                          Container(
                            width: 150,
                            height: 90,
                            margin: EdgeInsets.only(right: 10),
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(context,MaterialPageRoute(builder: (context) => SignUp(),));
                                },
                                child: Text(
                                  'Sign Up',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                style: ElevatedButton.styleFrom(
                                    shape: StadiumBorder(),
                                    primary: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
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
