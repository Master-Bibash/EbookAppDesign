// ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'dart:html';

import 'package:bookeapps/screens/after%20login%20Screen/afterloginbody.dart';
import 'package:bookeapps/screens/after%20login%20Screen/shoppingcart.dart';
// / import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'drawer/drawer.dart';
// import 'package:google_sign_in/google_sign_in.dart';

class Afterlogin extends StatefulWidget {
  static String routeName = "/afterlogin";

  @override
  State<Afterlogin> createState() => _AfterloginState();
}

class _AfterloginState extends State<Afterlogin> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

   bool color=true;

// googleLogin() async {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      // backgroundColor: color==true?Colors.white :Colors.black ,
      key: _scaffoldKey,
      drawer: drawer(),
      appBar: AppBar(
        
        actions: <Widget>[

          Container(
            
            margin: EdgeInsets.only(right: 10,top: 10),
            width: MediaQuery.of(context).size.width * 0.100,
            height: MediaQuery.of(context).size.height * 0.00900,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.grey[300]
            ),
            child: IconButton(onPressed: (){
          Navigator.push(context,MaterialPageRoute(builder: (context) => Cart(),));
            },
             icon: Icon(Icons.shopping_cart,color: Colors.black,size: 15,)),
          ),
            Container(
            margin: EdgeInsets.only(right: 10,top: 10),
            width: MediaQuery.of(context).size.width * 0.100,
            height: MediaQuery.of(context).size.height * 0.00900,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.grey[300]
            ),
            child: IconButton(onPressed: (){
              setState(() {
            color=!color;
              });
            },
            
             icon: Icon(Icons.sunny,color: Colors.black,size: 15,)),
          ),


        ],
        leading: IconButton(
            onPressed: () {
              _scaffoldKey.currentState?.openDrawer();
            },
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            )),
            
        backgroundColor: color?Colors.black: Colors.white,
        elevation: 0,
        title: Text(
          "Book Booster",
          style: TextStyle(
              color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold,
              // fontFamily:"",
              ),
        ),
      ),
      body: AfterLoginBody(color,),
    );
  }
}



class listitmes extends StatelessWidget {
  final VoidCallback? press;
  final IconData icon;
  String text;
  listitmes({
    Key? key,
    required this.press,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      leading: Icon(
        icon,
        color: Colors.black,
      ),
      title: Text(
        text,
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }
}



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
