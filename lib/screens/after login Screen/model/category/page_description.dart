import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../detailsScreen/productDetails.dart';
import '../product.dart';

Container fictional() {
  return Container(
    decoration: BoxDecoration(
      color: Colors.transparent,
    ),
    height: 350,
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: fic.length,
            itemBuilder: (context, index) {
              final demo = fic[index];
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => userPage(
                          demoProduct: demo,
                          index: index,
                        ),
                      ),
                    );
                  },
                  child: SizedBox(
                    width: 260,
                    // decoration: BoxDecoration(
                    //         color: Colors.red.withOpacity(0.1),
                    //   borderRadius: BorderRadius.circular(20)
                    // ),
                    child: Column(
                      children: [
                        Container(
                          height: 300,
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            color: Colors.red.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AspectRatio(
                                aspectRatio: 1.2,
                                child: Container(
                                  padding: EdgeInsets.only(
                                    top: 30,
                                  ),
                                  child: Image.asset(
                                    demo.image,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              Spacer(),
                              Text(
                                demo.title,
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.brown[200],
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 2,
                              ),
                              Text(
                                "Rs ${demo.price.toString()}",
                                style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.orange,
                                ),
                              ),
                              Spacer(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    ),
  );
}

Container selfimprovement() {
  return Container(
    height: 350,
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: self.length,
            itemBuilder: (context, index) {
              final demo = self[index];
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => userPage(demoProduct: demo,index: index,),
                      ),
                    );
                  },
                  child: SizedBox(
                    width: 260,
                    // decoration: BoxDecoration(
                    //         color: Colors.red.withOpacity(0.1),
                    //   borderRadius: BorderRadius.circular(20)
                    // ),
                    child: Column(
                      children: [
                        Container(
                          height: 300,
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            color: Colors.red.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AspectRatio(
                                aspectRatio: 1.2,
                                child: Container(
                                  padding: EdgeInsets.only(
                                    top: 30,
                                  ),
                                  child: Image.asset(
                                    demo.image,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              Spacer(),
                              Text(
                                demo.title,
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.brown[200],
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 2,
                              ),
                              Text(
                                "Rs ${demo.price.toString()}",
                                style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.orange,
                                ),
                              ),
                              Spacer(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    ),
  );
}

Container Psychology() {
  return Container(
    height: 350,
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: ps.length,
            itemBuilder: (context, index) {
              final demo = ps[index];
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => userPage(demoProduct: demo,index: index,),
                      ),
                    );
                  },
                  child: SizedBox(
                    width: 260,
                    // decoration: BoxDecoration(
                    //         color: Colors.red.withOpacity(0.1),
                    //   borderRadius: BorderRadius.circular(20)
                    // ),
                    child: Column(
                      children: [
                        Container(
                          height: 300,
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            color: Colors.red.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AspectRatio(
                                aspectRatio: 1.2,
                                child: Container(
                                  padding: EdgeInsets.only(
                                    top: 30,
                                  ),
                                  child: Image.asset(
                                    demo.image,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              Spacer(),
                              Text(
                                demo.title,
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.brown[200],
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 2,
                              ),
                              Text(
                                "Rs ${demo.price.toString()}",
                                style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.orange,
                                ),
                              ),
                              Spacer(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    ),
  );
}

Container Finance() {
  return Container(
    height: 350,
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: fi.length,
            itemBuilder: (context, index) {
              final demo = fi[index];
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => userPage(demoProduct: demo,index: index,),
                      ),
                    );
                  },
                  child: SizedBox(
                    width: 260,
                    // decoration: BoxDecoration(
                    //         color: Colors.red.withOpacity(0.1),
                    //   borderRadius: BorderRadius.circular(20)
                    // ),
                    child: Column(
                      children: [
                        Container(
                          height: 300,
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            color: Colors.red.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AspectRatio(
                                aspectRatio: 1.2,
                                child: Container(
                                  padding: EdgeInsets.only(
                                    top: 30,
                                  ),
                                  child: Image.asset(
                                    demo.image,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              Spacer(),
                              Text(
                                demo.title,
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.brown[200],
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 2,
                              ),
                              Text(
                                "Rs ${demo.price.toString()}",
                                style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.orange,
                                ),
                              ),
                              Spacer(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    ),
  );
}
