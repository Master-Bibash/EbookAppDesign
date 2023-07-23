// ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:flutter/material.dart';

class Product {
  final String title;
  final String genre;
  final String image;
  final int price;
  
// Use the plural form for the field name

  Product({
    required this.title,
    required this.genre,
    required this.image,
    required this.price,
  });
}

//demo products

List<Product> self = [
  Product(
      title: "The Subtle art of not giving a fuck",
    genre: "Self-Improvement",
      image: "assets/images/stocks/s1.png",
      price: 123),
  Product(

      title: "The Art of Simple Living",
    genre: "Self-Improvement",
      image: "assets/images/stocks/s3.png",
      price: 130),
  Product(
      title: "Fuck the anxiety",
    genre: "Self-Improvement",
      image: "assets/images/stocks/s4.png",
      price: 150),

];
List<Product> fic=[
  Product(

      title: "Our Last Summer",
        genre: "Fictional",
      image: "assets/images/fiction/f1.png",
      price: 199),
  Product(

      title: "Mastermind",
        genre: "Fictional",
      image: "assets/images/fiction/f3.png",
      price: 1424),
  Product(

      title: "The girl of ink & stars",
        genre: "Fictional",
      image: "assets/images/fiction/f4.png",
      price: 199),
  Product(

      title: "The Garden",
        genre: "Fictional",
      image: "assets/images/fiction/f5.png",
      price: 155),
  Product(

      title: "Mother of Dragons",
        genre: "Fictional",
      image: "assets/images/fiction/f6.png",
      price: 1993),
];
List<Product> ps=[
  Product(

      title: "The Shallow Sentiments",
        genre: "Psychology",
      image: "assets/images/psychology/ff6.png",
      price: 199),
  Product(

      title: "The Power",
        genre: "Psychology",
      image: "assets/images/psychology/s5.png",
      price: 199),
  Product(

      title: "The Alchimest",
        genre: "Psychology",
      image: "assets/images/psychology/s6.png",
      price: 199),
];
List<Product> fi=[
  Product(

      title: "The Public Finance",
        genre: "finance",
      image: "assets/images/stocks/ff1.png",
      price: 299),
  Product(

      title: "More Money Please",
        genre: "finance",
      image: "assets/images/stocks/ff5.png",
      price: 499),
  Product(

      title: "The Financial freedom",
        genre: "finance",
      image: "assets/images/stocks/ff4.png",
      price: 399),
];


