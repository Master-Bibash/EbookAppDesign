import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:bookeapps/screens/after%20login%20Screen/model/product.dart';
import 'package:flutter/widgets.dart';

class CartItem {
  final Product product;
  int quantity;

  CartItem(this.product, this.quantity);
}

class CartController extends GetxController {
  var _products = <String, CartItem>{}.obs;

  void addProduct(Product product, int index) {
    final productId = product.title;
    
    if (_products.containsKey(productId)) {
      _products[productId]!.quantity += 1;
    } else {
      _products[productId] = CartItem(product, 1);
    }
    
    print("Added product at index $index to cart.");
  }

  List<CartItem> get cartItems => _products.values.toList();
}

class cartbody extends StatefulWidget {
  const cartbody({Key? key}) : super(key: key);

  @override
  State<cartbody> createState() => _cartbodyState();
}

class _cartbodyState extends State<cartbody> {
  CartController cart = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: cart.cartItems.length,
      itemBuilder: (context, index) {
        final cartItem = cart.cartItems[index];
        return Card(
          child: Row(
            children: [
              Image.asset(cartItem.product.image), // Modify this to get the product image
              Text(cartItem.product.title), // Modify this to get the product title
              Text("Quantity: ${cartItem.quantity}"), // Show the quantity of the product
            ],
          ),
        );
      },
    );
  }
}
