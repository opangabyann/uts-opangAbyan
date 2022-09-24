import "package:flutter/material.dart";
import 'package:uts_1/main.dart';

class Tampilan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(right: 40, top: 40, left: 40),
              child: Column(
                children: [
                  Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text("")
                        
                      ),
                      Text(
                        "myQuran",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 58, 159, 88),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      
                      Text(""),
                      
                    ],
                  )),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    height: 120,
                    child: Image.asset("lib/image/quran.png"),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/home');
                          },
                          child: Container(
                            padding: EdgeInsets.all(15),
                            height: 150,
                            width: 150,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 58, 159, 88),
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 50,
                                      child:
                                          Image.asset("lib/image/quran2.png"),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "Baca quran",
                                          style: TextStyle(
                                              fontSize: 17,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(15),
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 58, 159, 88),
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 50,
                                    child: Image.asset("lib/image/morning.png"),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Text("Dzikir pagi",
                                      style: TextStyle(
                                          fontSize: 17, color: Colors.white,fontWeight: FontWeight.w500))
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        padding: EdgeInsets.all(15),
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 58, 159, 88),
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 50,
                                  child: Image.asset("lib/image/pm.png"),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Dzikir petang",
                                  style: TextStyle(
                                      fontSize: 17, color: Colors.white,fontWeight: FontWeight.w500),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        padding: EdgeInsets.all(15),
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 58, 159, 88),
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 40,
                                  child: Image.asset("lib/image/jadwal.png"),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text("Jadwal sholat",
                                    style: TextStyle(
                                        fontSize: 17, color: Colors.white,fontWeight: FontWeight.w500))
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
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
