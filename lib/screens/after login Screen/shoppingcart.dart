import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.black54,
              padding: EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                      alignment: Alignment.centerLeft,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 20,
                      )),
                  SizedBox(
                    width: 120,
                  ),
                  Text(
                    "My Cart",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
           Expanded(
  child: Container(
    width: double.infinity,
    color: Colors.black,
    child: Column(
      children: [
        Spacer(),
        Expanded(
          child: Container(
            child: Icon(
              
              Icons.shopping_cart_checkout,
              size: 300,
              color: Colors.white60,
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          
          child: Padding(
            padding: const EdgeInsets.only(right: 10),
            child: ElevatedButton(onPressed: (){},
            style: ElevatedButton.styleFrom(
              shape: StadiumBorder(),
              backgroundColor: Colors.redAccent,
              elevation: 0,

            ),
             child: Text("Place Order",style: TextStyle(color: Colors.white,
             )))
        )),
      ],
    ),
  ),
)

          ],
        ),
      ),
    );
  }
}
