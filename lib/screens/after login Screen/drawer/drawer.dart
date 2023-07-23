import 'package:flutter/material.dart';

import '../afterloginscreen.dart';

class drawer extends StatelessWidget {
  const drawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(

shadowColor: Colors.red,  
    shape: RoundedRectangleBorder(
        
        borderRadius: BorderRadius.circular(10),
      ),
      child: SafeArea(
          child: Column(
        children: [
          Stack(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("Bibash"),
                accountEmail: Text("bibash@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://w0.peakpx.com/wallpaper/979/89/HD-wallpaper-purple-smile-design-eye-smily-profile-pic-face-thumbnail.jpg"),
                ),
              ),
              Positioned(
                  right: 198,
                  bottom: 66,
                  child: IconButton(
                      onPressed: () {}, icon: Icon(Icons.add_a_photo))),
            ],
          ),
          Card(
            elevation: 0,
            child: Column(
              children: [
                listitmes(
                    press: () {}, icon: Icons.favorite, text: "Favourite"),
                listitmes(press: () {}, icon: Icons.person_2, text: "Users"),
                listitmes(
                    press: () {}, icon: Icons.settings, text: "Setting"),
                listitmes(
                    press: () {}, icon: Icons.shopping_cart, text: "Orders"),
                listitmes(press: () {}, icon: Icons.help, text: "Help"),
              ],
            ),
          )
        ],
      )),
    );
  }
}