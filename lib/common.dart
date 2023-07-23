// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ffi';

import 'package:flutter/material.dart';

List<Map<String, dynamic>> intro = [
  {
    'image': 'assets/images/stocks/1.png',
    'title': 'Order Your Food',
    'text': 'Now you can order food any time right from your mobile',
  },
  {
    'image': 'assets/images/stocks/2.png',
    'title': 'Cooking safe food',
    'text': 'We are maintain safety and We keep clean while making food',
  },
  {
    'image': 'assets/images/stocks/3.png',
    'title': 'Quick delivery',
    'text': 'Orders your favourite meals will be immediately deliver',
  },
];
// List<Map<String, dynamic>> sec = [
//   {
//     'image': 'assets/images/stocks/1.png',
//     'text': 'The fastest\n in Delivery\n Books.',
//     'title': 'Order Now'
//   },
//   {
//     'image': 'assets/images/stocks/1.png',
//     'text': 'The Safest\n way to\ndeliver\n Books.',
//     'title': 'Order Now'
//   },
//   {
//     'image': 'assets/images/stocks/1.png',
//     'text': 'The fastest\n in Delivery\n Books.',
//     'title': 'Order Now'
//   }
// ];
// List<Swiping> data = [
//   Swiping(
//       img: 'assets/images/stocks/1.png',
//       text: 'The fastest\n in Delivery\n Books.'),
//   Swiping(
//       img: 'assets/images/stocks/2.png',
//       text: 'The Safest\n way to\ndeliver\n Books.'),
//   Swiping(
//       img: 'assets/images/stocks/3.png',
//       text: 'The fastest\n in Delivery\n Books.')
// ];


class AppBanner {
  final int id;
  final String image;
  final String title;
 

  AppBanner( 
    this.id,
    this.image,
    this.title,
    );
}

List<AppBanner> appBannerList = [
  AppBanner(1, 'assets/images/stocks/1.png', 'The fastest\nin Delivery\nBooks.'),
  AppBanner(2, 'assets/images/stocks/2.png', 'The fastest\nin Delivery\nBooks.'),
  AppBanner(3, 'assets/images/stocks/3.png', 'The fastest\nin Delivery\nBooks.',),
];


// class CardItem{
//   final String urlImage;
//   final String title;
//   final String subtitle;

//   CardItem(this.urlImage, this.title, this.subtitle);
  
// }
class Swiping extends StatelessWidget {
  final String img;
  final String text;
  final GestureTapCallback press;

  Swiping({
    Key? key,
    required this.img,
    required this.text,
    required this.press,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        margin: EdgeInsets.all(10),
        shadowColor: Colors.black,
        borderOnForeground: true,
        color: Colors.black,
        elevation: 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.green[200],
          ),
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    text,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black12,
                    ),
                    onPressed: () {},
                    child: Text(
                      "Order Now",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              Spacer(),
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: Image.asset(
                    img,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
  // final List<Map<String, dynamic>> sec = [
  //   {
  //     'image': 'assets/images/stocks/1.png',
  //     'text': 'The fastest\nin Delivery\nBooks.',
  //     'title': 'Order Now'
  //   },
  //   {
  //     'image': 'assets/images/stocks/1.png',
  //     'text': 'The Safest\nway to\ndeliver\nBooks.',
  //     'title': 'Order Now'
  //   },
  //   {
  //     'image': 'assets/images/stocks/1.png',
  //     'text': 'The fastest\nin Delivery\nBooks.',
  //     'title': 'Order Now'
  //   }
  // ];
  // List<CardItem> item = [
  //   CardItem("assets/images/fiction/f1.png", "OUR LAST SUMMER", "Fiction"),
  //   CardItem("assets/images/fiction/f2.png", "SECRETS", "Fiction"),
  //   CardItem("assets/images/fiction/f3.png", "MASTERMIND", "Fiction"),
  //   CardItem(
  //       "assets/images/fiction/f4.png", "THE GIRL OF INK AND STARS", "Fiction"),
  //   CardItem("assets/images/fiction/f5.png", "THE GARDEN", "Fiction"),
  //   CardItem("assets/images/fiction/f6.png", "MOTHER OF DRAGONS", "Fiction"),
  // ];
  // List<CardItem> item2 = [
  //   CardItem(
  //       "assets/images/psychology/ff6.png", "THE SHALLOW SENT", "Psychology"),
  //   CardItem("assets/images/psychology/s5.png", "The Power", "Psychology"),
  //   CardItem("assets/images/psychology/s6.png", "The Alchimist", "Psychology"),
  //     CardItem("assets/images/stocks/p1.png",
  //    "The connection is your brain", "Psychology"),
  //      CardItem("assets/images/stocks/p2.png",
  //    "The creative brain", "Psychology"),
  //      CardItem("assets/images/stocks/p3.png",
  //    "The human brain", "Psychology"),
  //      CardItem("assets/images/stocks/41.png",
  //    "The human brain", "Psychology"),

  // CardItem("assets/images/stocks/p5.png",
  //    "Typography", "Psychology"),
  
  //   // CardItem(
  //   //     "assets/images/fiction/f4.png", "THE GIRL OF INK AND STARS", "Fiction"),
  //   // CardItem("assets/images/fiction/f5.png", "THE GARDEN", "Fiction"),
  //   // CardItem("assets/images/fiction/f6.png", "MOTHER OF DRAGONS", "Fiction"),
  // ];
//   List <CardItem> item3=[
//     CardItem("assets/images/stocks/ff5.png",
//      "More money please", "Finance"),
//        CardItem("assets/images/stocks/ff4.png",
//      "Financial Freedom", "Finance"),
//          CardItem("assets/images/stocks/ff3.png",
//      "Computer Finance", "Finance"),


//   ];
//   List<CardItem> item4=[
//    CardItem("assets/images/stocks/s4.png",
//      "Fuck Anxiety", "Self-HelpBook"),
//  CardItem("assets/images/stocks/s3.png",
//      "XEN", "Self-HelpBook"),
//       CardItem("assets/images/stocks/s4.png",
//      "Fuck Anxiety", "Self-HelpBook"),
//       CardItem("assets/images/stocks/s2.png",
//      "A journey to Inner Healing", "Self-HelpBook"),
//       CardItem("assets/images/stocks/s1.png",
//      "A subtle of not giving a fuck", "Self-HelpBook"),
//   ];