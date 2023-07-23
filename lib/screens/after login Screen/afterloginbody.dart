// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bookeapps/screens/after%20login%20Screen/model/category/page_description.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:bookeapps/common.dart';

class AfterLoginBody extends StatefulWidget {
final bool color;

   AfterLoginBody( this.color);

  @override
  State<AfterLoginBody> createState() => _AfterLoginBodyState();
}

class _AfterLoginBodyState extends State<AfterLoginBody> {
  late PageController pageController;
  int _select = 0;

  @override
  void initState() {
    pageController = PageController(initialPage: 0, viewportFraction: 0.8);
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
          child: Container(
 color: widget.color ? Colors.black : Colors.white, 
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 10),
                  Text(
                    "Welcome",
                    style: TextStyle(
                      color: Colors.brown[200],
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 200,
              child: PageView.builder(
                physics: AlwaysScrollableScrollPhysics(),
                reverse: false,
                pageSnapping: true,
                padEnds: true,
                itemCount: appBannerList.length,
                itemBuilder: (context, index) {
                  return Swiping(
                    img: appBannerList[index].image,
                    text: appBannerList[index].title,
                    press: () {},
                  );
                },
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                "Categories",
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Hero(
              tag: "Category",
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 2),
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  dragStartBehavior: DragStartBehavior.start,
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 130,
                        height: 50,
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              _select = 0;
                            });
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                _select == 0 ? Colors.red : Colors.grey),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                          ),
                          child: Text(
                            "Fiction",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      SizedBox(
                        width: 130,
                        height: 50,
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              _select = 1;
                            });
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                _select == 1 ? Colors.red : Colors.grey),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                          ),
                          child: Text(
                            "Psychology",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      SizedBox(
                        width: 130,
                        height: 50,
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              _select = 2;
                            });
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                _select == 2 ? Colors.red : Colors.grey),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                          ),
                          child: Text(
                            "Finance",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      SizedBox(
                        width: 130,
                        height: 50,
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              _select = 3;
                            });
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                _select == 3 ? Colors.red : Colors.grey),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                          ),
                          child: Text(
                            "Self-helpBooks",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Popular Now",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Handle "View All" button tap
                    },
                    child: Row(
                      children: [
                        Text(
                          "View All",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.yellow,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(
                          Icons.navigate_next_outlined,
                          size: 17,
                          color: Colors.yellow,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            _select==3? selfimprovement():(_select==1? Psychology():(_select==2 ? Finance():fictional() ))


          ],
        ),
      )),
    );
  }

  


}

// class swipe extends StatelessWidget {
//   final Product product;
//   const swipe({
//     Key? key,
//      required this.product,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//      padding: const EdgeInsets.only(left: 15),
//      child: GestureDetector(
//        onTap: () {
//          // _launchURL(product.link);
//          () {};
//        },
//        child: SizedBox(
//          width: 200,
//          child: Column(
//            children: [
//              Container(
//                child: AspectRatio(
//                  aspectRatio: 1.2,
//                  child: Container(
                  
//                    padding: EdgeInsets.only(top: 10, bottom: 10),
//                    decoration: BoxDecoration(
//                      color: Colors.red.withOpacity(0.1),
//                      borderRadius: BorderRadius.circular(20),
//                    ),
//                    child: Image.asset(
//                    product.image,
//                      fit: BoxFit.contain,
//                    ),
//                  ),
//                ),
//              ),
//              Text(
//                "product.title",
//                style: TextStyle(color: Colors.black),
//                maxLines: 2,
//              ),
//              Text(
//                // "\$${product.price}",
//                "adasdasd",
//                style: TextStyle(
//                  fontSize: 19,
//                  fontWeight: FontWeight.w800,
//                  color: Colors.orange,
//                ),
//              ),
//            ],
//          ),
//        ),
//      ),
//                 );
//   }
// }
