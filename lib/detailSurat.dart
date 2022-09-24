// ignore_for_file: prefer_const_constructors


import "package:flutter/material.dart";
// import 'package:uts_1/main.dart';
import 'package:uts_1/models/dataBaqoroh.dart';
import 'package:uts_1/service/baqorohservice.dart';

class Detail extends StatefulWidget {
  
  
  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
   List<Verse> dataAyat = [];

  void getSuratData() {
    BaqorohService().getData().then((value) {
      setState(() {
        // print(value);
        dataAyat = value;
      });
    });
  }

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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/home');
                      },
                      child: Container(
                        child: Icon(
                          Icons.keyboard_arrow_left,
                          size: 27,
                          color: Color.fromARGB(255, 58, 159, 88),
                        ),
                      ),
                    ),
                    Text("Al - baqoroh",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 58, 159, 88),
                        )),
                    Container(
                      child: Icon(Icons.search_rounded,
                          size: 25, color: Color.fromARGB(255, 58, 159, 88)),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, bottom: 20),
                  width: 400,
                  height: 170,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 58, 159, 88),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black45,
                            blurRadius: 2,
                            offset: Offset(
                              3,
                              2.7,
                            ))
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Column(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              // margin: EdgeInsets.only(top: 10),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Text(
                                    "Al-baqoroh",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 1,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    "sapi betina",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 1,
                                        color: Colors.white),
                                  ),
                                ],
                              ),

                              Container(
                                margin: EdgeInsets.only(top: 40),
                                child: Row(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    Text(
                                      "madaniyyah ",
                                      style: TextStyle(
                                          fontSize: 11,
                                          // fontWeight: FontWeight.bold,
                                          letterSpacing: 0.7,
                                          color: Colors.white),
                                    ),
                                    Text("- 286 ayat",
                                        style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white))
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('بِسْــــــــــــــــــمِ اللهِ الرَّحْمَنِ الرَّحِيْمِ',  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w800,
                                    
                                    color: Color.fromARGB(255, 58, 159, 88),
                                  ),)
                    ],
                  ),
                ),

                Column(
                  children: [
                    Isi(context, ),
                  ]
                  
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}

Widget Isi (context){
  return Container(
                      margin: EdgeInsets.only(bottom: 20),
                      padding: EdgeInsets.all(10),
                      width: 440,
                      height: 90,
                      decoration: BoxDecoration(
                        // color: Colors.black45,
                         border: Border(bottom: BorderSide(color: Colors.black26, width: 1)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Container(
                              margin: EdgeInsets.only(bottom:15),
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 58, 159, 88),
                                  borderRadius: BorderRadius.circular(100)
                                ),
                                child: Text('1',style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1,
                                  color: Colors.white,
                                ),textAlign: TextAlign.center,),
                              ),
                              Text(
                                "arti ayat",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1,
                                  color: Color.fromARGB(255, 58, 159, 88),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Text("ayat",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 1,
                                    color: Color.fromARGB(255, 58, 159, 88),
                                  )),
                            ],
                          )
                        ],
                      ),
                    );
}