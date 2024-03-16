import 'package:demo_2/Screen.dart';
import 'package:demo_2/imageDemo.dart';
import 'package:demo_2/screen2.dart';
import 'package:demo_2/tabbardemo.dart';
import 'package:demo_2/textdemo.dart';
import 'package:demo_2/validation.dart';
import 'package:demo_2/validationdemo.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


import 'HomePage.dart';
import 'devScreen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

   Future<bool?> getData() async {
     final SharedPreferences prefs = await SharedPreferences.getInstance();

     bool? isChecked = prefs.getBool("isRemember");
     print(isChecked);
     return isChecked;
   }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {


            return FutureBuilder<bool?>(
              future: getData(),
              builder: (context, snapshot) {
                return MaterialApp(
                  title: 'Flutter Demo',
                  debugShowCheckedModeBanner: false,
                  theme: ThemeData(
                    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                    useMaterial3: true,
                  ),
                  home: snapshot.hasData ? ImageDemo(): ValidationDemo(),
                );
              }
            );


  }
}



