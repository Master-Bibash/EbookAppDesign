
import 'package:bookeapps/routes.dart';
import 'package:bookeapps/screens/splashscreen/splash.dart';
import 'package:flutter/material.dart';

void main()  {
  //  WidgetsFlutterBinding.ensureInitialized();
  //   await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
     
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        // useMaterial3: true,
      
      ),
      initialRoute: Splash.routeName,
      routes: routes,
      home: Splash(),
      
    );
  }
}


