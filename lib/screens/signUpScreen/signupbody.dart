import 'dart:ui';

import 'package:bookeapps/screens/after%20login%20Screen/afterloginscreen.dart';
import 'package:flutter/material.dart';

class SignUpBody extends StatefulWidget {
  @override
  State<SignUpBody> createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SignUpBody> {
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();
  bool _isEmailFocused = false;
  bool _isPasswordSelected = false;
  bool eye = true;

  @override
  void dispose() {
    // TODO: implement dispose
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Color(0xFFEF9A9A),
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios_new),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        elevation: 0,
                      ),
                      onPressed: () {},
                      child: Text(
                        "Guest",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Sign Up",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Text(
                      "Hey, Welcome to the app, here provide your email and password to sign up.",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 4, right: 16),
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 60,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.90,
                          child: TextFormField(
                            textInputAction: TextInputAction.next,
                            textAlign: TextAlign.start,
                            keyboardType: TextInputType.emailAddress,
                            focusNode: _emailFocusNode,
                            decoration: InputDecoration(
                              focusedBorder: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  borderSide: BorderSide(color: Colors.pink)),
                              enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              prefixIcon: Icon(
                                Icons.email_rounded,
                                color:
                                    _isEmailFocused ? Colors.red : Colors.grey,
                              ),
                              hintText: "User email",
                              fillColor: Colors.brown.withOpacity(0.2),
                              filled: true,
                            ),
                            onTap: () {
                              setState(() {
                                _isEmailFocused = true;
                              });
                            },
                            onEditingComplete: () {
                              setState(() {
                                _isEmailFocused = false;
                              });
                            },
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.90,
                          child: TextFormField(
                            obscureText: eye,
                            textAlign: TextAlign.start,
                            textInputAction: TextInputAction.done,
                            keyboardType: TextInputType.text,
                            focusNode: _passwordFocusNode,
                            decoration: InputDecoration(
                              focusedBorder: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  borderSide: BorderSide(color: Colors.pink)),
                              enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              prefixIcon: Icon(
                                Icons.password_rounded,
                                color: _isPasswordSelected
                                    ? Colors.red
                                    : Colors.grey,
                              ),
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      if (eye == true) {
                                        eye = false;
                                      } else {
                                        eye = true;
                                      }
                                    });
                                  },
                                  icon: Icon(eye
                                      ? Icons.visibility
                                      : Icons.visibility_off)),
                              hintText: "User password",
                              fillColor: Colors.brown.withOpacity(0.2),
                              filled: true,
                            ),
                            onTap: () {
                              setState(() {
                                _isPasswordSelected = true;
                              });
                            },
                            onEditingComplete: () {
                              setState(() {
                                _isPasswordSelected = false;
                              });
                            },
                          ),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Forgot Password ?",
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                  color: Colors.black38,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        Column(
                          children: [
                            SizedBox(
                              width: double.infinity,
                              height: 50,
                              child: ElevatedButton(
                                  onPressed: () {
                                    // Navigator.pushNamed(context,Afterlogin.routeName);
                                  Navigator.push(context,MaterialPageRoute(builder: (context) => Afterlogin(),));
                                  }
                                  ,
                                  style: ElevatedButton.styleFrom(
                                    // tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                    backgroundColor: Colors.black,
                                    alignment: Alignment.center,
                                    elevation: 0,
                                    shape: StadiumBorder(),
                                  ),
                                  child: Text("Sign Up")),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Material(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          shadowColor: Colors.black.withOpacity(0.9),
                          type: MaterialType.card,
                          elevation: 18,
                          child: Container(
                            height: 60,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white60,

                                  // offset: Offset(0,-0)
                                )
                              ],
                              // shape: BoxShape.circle,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                            ),
                            // color: Colors.red,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.facebook_rounded,
                                      color: Colors.blue,
                                      size: 30,
                                    )),
                                TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Continue with Facebook",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 18),
                                    )),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.arrow_forward))
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 30,),
                     Material(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          shadowColor: Colors.black.withOpacity(0.9),
                          type: MaterialType.card,
                          elevation: 18,
                          child: Container(
                            height: 60,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white60,

                                  // offset: Offset(0,-0)
                                )
                              ],
                              // shape: BoxShape.circle,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                            ),
                            // color: Colors.red,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.apple,
                                      color: Colors.black,
                                      size: 30,
                                    )),
                                TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Continue with Apple",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 18),
                                    )),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.arrow_forward))
                              ],
                            ),
                          ),
                        ),
                      ],
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
