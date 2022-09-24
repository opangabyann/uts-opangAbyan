// ignore_for_file: unnecessary_import, unused_import, implementation_imports, prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, sized_box_for_whitespace, duplicate_ignore


import "package:flutter/material.dart";
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 1, 119, 46),
      body: SafeArea(
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  height: 300,
                  child: Image.asset("lib/image/login-asli.png"),
                )
              ],
            ),
            
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 90, 139, 148),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30)
                ),
              ),
              height: 520,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        decoration: BoxDecoration(),
                        padding: EdgeInsets.only( top: 20,left: 15),
                        child: Icon(Icons.arrow_back_ios_outlined,color: Colors.white,),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 20, left: 15),
                      // ignore: prefer_const_constructors
                      child: Text(
                        "Hi welcome back!",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 7, left: 15),
                      child: Text("hello you've been missed",
                          style:
                              TextStyle(fontSize: 15, color: Colors.white54)),
                    ),
                  ],
                ),
              ],
            ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.all(22),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(15),
                          height: 60,
                          decoration: BoxDecoration(
                            // color: Color.fromARGB(255, 90, 139, 148),
                            border: Border.all(
                                color: Color.fromARGB(210, 255, 255, 255)),
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Email address",
                              hintStyle: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontWeight: FontWeight.bold),
                              // icon: Icon(Icons.people)
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          padding: EdgeInsets.all(15),
                          height: 60,
                          decoration: BoxDecoration(
                              // color: Color.fromARGB(255, 90, 139, 148),
                              border: Border.all(
                                  color: Color.fromARGB(210, 255, 255, 255)),
                              borderRadius: BorderRadius.circular(7)),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Password",
                              hintStyle: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontWeight: FontWeight.bold),

                              // icon: Icon(Icons.people)
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            margin: EdgeInsets.only(
                              top: 27,
                            ),
                            decoration: BoxDecoration(
                                color: Colors.blue[800],
                                borderRadius: BorderRadius.circular(16)),
                            width: 400,
                            height: 40,
                            child: Center(
                              child: Text(
                                "Login",
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
