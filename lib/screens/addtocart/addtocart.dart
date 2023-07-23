import 'package:flutter/material.dart';

class addToCart extends StatefulWidget {
  const addToCart({super.key});

  @override
  State<addToCart> createState() => _addToCartState();
}

class _addToCartState extends State<addToCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Cart"),
      ),
      body: Column(
        children: [
          Container(
            child:Card(
              child: Row(
                children: [

                ],
              ),
            ) ,
          ),
        ],
      ),
    );
  }
}
