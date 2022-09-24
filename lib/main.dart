// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:uts_1/depan.dart';
import 'package:uts_1/detailSurat.dart';
import 'package:uts_1/listSurat.dart';
// import 'package:uts_1/Depan.dart';

import 'package:uts_1/login.dart';
import 'package:uts_1/splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
   
        primarySwatch: Colors.blue,
      ),
      // home: Tampilan(),
      initialRoute: '/splashScreen',
      routes: {
        '/splashScreen': (context) => SplashScreen(),
        '/': (context) => Tampilan(),
        '/home': (context) => Home(),
        '/detail': (context) => Detail(),
        }
    );
  }
}

