
import 'package:flutter/material.dart';
import 'package:foodhunter/screens/onboard/onboard_screen.dart';


void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatelessWidget {


  get kBodyColor => null;

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Hunter',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
          bodyText1: TextStyle(
            color: Colors.black,
        
          ),
          bodyText2: TextStyle(
            color:Colors.black,
           
          ),
        ),
      
         visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:Onboard(),
    );
  }
}


