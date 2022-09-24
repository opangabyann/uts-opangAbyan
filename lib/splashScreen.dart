import 'dart:async';
// ignore: unused_import
import 'dart:ffi';
import 'package:flutter/material.dart';
// ignore: unused_import

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startSplashScreen() async {
    var duration = const Duration(seconds: 5);
    return Timer(duration, () {
      Navigator.pushReplacementNamed(context, '/');
    });
  }

  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 58, 159, 88),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 30),
                height: 150,

                 child: Image.asset('lib/image/orang.png')),

              SizedBox(
                height: 24.0,
              ),
              // ignore: prefer_const_constructors
            ],
          ),
          // ignore: prefer_const_constructors
          Text(
            "myQuran",
            // ignore: prefer_const_constructors
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
            ),
          ),
        ],
      ),
    );
  }
}
