import 'package:flutter/material.dart';

class loginbody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(Icons.arrow_back_ios_new_outlined),
                    ),
                    CircleAvatar(
                      radius: 16,
                      backgroundColor: Colors.black,
                      child: IconButton(
                        padding: EdgeInsets.all(5),
                        onPressed: () {},
                        icon: Icon(
                          Icons.question_mark_rounded,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                
                padding: const EdgeInsets.only(left: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Please,",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Log In Here to Continue",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // Stack(
                    //   children: [
                    //     Image.asset("assets/images/stocks/4.png"),
                        
                    //   ],
                    // ),
                    Image.asset("assets/images/stocks/4.png"),
                  ],
                ),
              ),
              
                    Expanded(
                      
                      child: Container(
                        
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              offset: Offset(0.0,1.0),
                              blurRadius: 9.0
                            )
                          ],
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight:Radius.circular(50)),
                            color: Color(0xFFEF9A9A),
                            
                      
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 20,),
                            SizedBox(
                            
                              width: 350,
                              child: TextFormField(
                                
                              
                                decoration: InputDecoration(
                                  focusColor: Colors.white,
                                prefixIcon: Icon(Icons.email_outlined,color: Colors.grey,),
                                
                               
                                  border: OutlineInputBorder(
                                    
                                    
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                    hintText: " Enter your email",
                                    fillColor: Colors.white,
                                  
                                    filled: true,
                                    focusedBorder: OutlineInputBorder(
                                      // borderSide: BorderSide(color: Colors.black,width: 1),
                                      borderRadius: BorderRadius.circular(40),
                                    )
                                ),
                                
                                
                                
                                
                                
                              ),
                            ),
                            SizedBox(height: 16,),
                             SizedBox(
                            
                              width: 350,
                              child: TextFormField(
                                
                              
                                decoration: InputDecoration(
                                  focusColor: Colors.white,
                                prefixIcon: Icon(Icons.password,color: Colors.grey,),
                              
                          
                                
                               
                                  border: OutlineInputBorder(
                                    
                                    
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                    hintText: " Enter your password",
                                    fillColor: Colors.white,
                                  
                                    filled: true,
                                    focusedBorder: OutlineInputBorder(
                                      // borderSide: BorderSide(color: Colors.black,width: 1),
                                      borderRadius: BorderRadius.circular(40),
                                    )
                                ),
                                
                                
                                
                                
                                
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: TextButton(onPressed: (){},
                               child: Text("Forgot Password ?",style: TextStyle(color: Colors.black,
                               fontSize: 13,fontWeight: FontWeight.bold),))
                            ),
                            SizedBox(
                              width: 350,
                              height: 50,
                              child: ElevatedButton(
                                onPressed: (){},
                               child: Text("Login",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                               style: ElevatedButton.styleFrom(backgroundColor: Colors.black
                               ,shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)) ),
                               
                               ),
                            ),
                            
                            // Spacer(),
                            SizedBox(height: 10,),

                          ],
                          
                        ),
                      
                        
                      ),
                    )
            ],
          ),
        ),
      ),
    );
  }
}
