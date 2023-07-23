// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:bookeapps/screens/addtocart/cardController.dart';

import '../after login Screen/model/product.dart';

class userPage extends StatelessWidget {
final int index;
  final Product demoProduct;
 
final carrtController =Get.put(CartController());
  userPage({
    Key? key,
    required this.index,
    required this.demoProduct,
  }) : super(key: key);

 

  @override
  Widget build(BuildContext context) {
      double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).height;
    final demo = demoProduct;

    
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.pink[200],
      ),
     
      body: Stack(
      children: [
        Container(
          color: Colors.pink[200],
          child: Column(
            children: [
              Container(
                height: height * .3,
                decoration: BoxDecoration(
                    color: Colors.pink[200],
                    borderRadius: BorderRadius.only(
                        // bottomRight: Radius.circular(50)
                        )),
              ),
              Expanded(
                child: Container(
                  // height: height*.6,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 190,),
                        Spacer(),
                        

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(demo.title,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                            Text(
                              demo.price.toString(),
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                          
                        ),
                        SizedBox(height: 10,),
                            Text(demo.genre.toString(),
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        color: Colors.brown[100],
                                        fontWeight: FontWeight.bold)),
                        Divider(color: Colors.brown[100], thickness: 1),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              // color: Colors.red,
                              child: Row(
                                children: [
                                  Icon(Icons.star,color: Colors.yellow,size: 30,),
                                  SizedBox(width: 5,),
                                    Text("5.4",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                                                            fontSize: 20,

                                        color: Colors.black,
                                        fontWeight: FontWeight.bold))

                                ],
                              ),
                              
                            ),
                            Container(child: 
                            Row(
                              children: [
                                Icon(Icons.alarm_rounded,color: Colors.black54,),
                                    Text("10-20 hours",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold))
                              ],
                            ),)
                          ],
                        ),
                        SizedBox(height: 30,),
                        Text("This Book is a good book to read with it.",
                        style: TextStyle(
                                      fontSize: 20,
                                        color: Colors.brown[200],
                                        fontWeight: FontWeight.bold)
                        ),
                        SizedBox(height: 30,),
                        Container(
                          width: double.infinity,
                          height: height*0.1,
                          child: ElevatedButton(onPressed: (){

                            carrtController.addProduct(demoProduct,index);




                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.pink,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                          ),
                           child: Text("Add to cart",
                           style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                        ),Spacer(),
                        
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          left: width * .1,
          top: height * .5 - (width * .4),
          child: Container(
            height: width * .4,
            width: width * .3,
            child: Image(image: AssetImage(demoProduct.image)),
          ),
        )
      ],
    )
    );
  }
}
