// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:bookeapps/screens/detailsScreen/detailsScreenBody.dart';
// import 'package:flutter/material.dart';

// import 'package:bookeapps/screens/after%20login%20Screen/model/product.dart';

// class DetailsScreen extends StatelessWidget {
//   const DetailsScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         leading: roundIconButton(
//             iconData: Icons.arrow_back_ios,
//             press: () => Navigator.pop(context)),
//         actions: <Widget>[
//           roundIconButton(iconData: Icons.shopping_cart, press: () {}),
//         ],
//       ),
//       body: DetailsScreenBody(),
//     );
//   }
// }

// class roundIconButton extends StatelessWidget {
//   const roundIconButton({
//     Key? key,
//     required this.iconData,
//     required this.press,
//   }) : super(key: key);
//   final IconData iconData;
//   final GestureTapCallback press;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 5),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.horizontal(
//           left: Radius.circular(15),
//           right: Radius.circular(15),
//         ),
//       ),
//       child: IconButton(
//         onPressed: press,
//         icon: Icon(iconData, color: Colors.brown[200], size: 20),
//       ),
//     );
//   }
// }

// class ProductDetailsArguments {
//   final Product product;

//   ProductDetailsArguments({required this.product});
// }
