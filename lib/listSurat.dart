// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import "package:flutter/material.dart";
import 'package:uts_1/models/datasurat.dart';
import 'package:uts_1/service/suratService.dart';
// import 'package:uts_1/models/datasurat.dart';
// import 'package:uts_1/service/suratService.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Surat> dataSurat = [];

  void getSuratData() {
    SuratService().getData().then((value) {
      setState(() {
        // print(value);
        dataSurat = value;
      });
    });
  }

  @override
  void initState() {
    getSuratData();
    super.initState();
    // print(dataSurat);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        // decoration: BoxDecoration(
        //     gradient: LinearGradient(
        //   begin: Alignment.topCenter,
        //   end: Alignment.bottomCenter,
        //   colors: [
        //     // Colors.white,
        //     Color.fromARGB(255, 140, 210, 245),
        //     Color.fromARGB(255, 140, 210, 245),
        //     Color.fromARGB(255, 140, 210, 245),

        //     Colors.white,
        //     // Colors.blueGrey,
        //     // Colors.white,
        //     // Colors.blueGrey,

        //   ],
        // )),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 40, top: 40, right: 40),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/');
                          },
                          child: Container(
                            // margin: EdgeInsets.only(),
                            // width: 200,
                            child: Icon(
                              Icons.home_outlined,
                              color: Color.fromARGB(255, 58, 159, 88),
                              size: 30,
                            ),
                          ),
                        ),
                        Text(
                          "myQuran",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 58, 159, 88),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Container(
                          child: Icon(
                            Icons.format_list_bulleted_rounded,
                            color: Color.fromARGB(255, 58, 159, 88),
                            size: 30,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          child: Text(
                            "Surah",
                            style: TextStyle(
                                color: Colors.blueGrey,
                                decoration: TextDecoration.underline),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20, bottom: 20),
                      width: 440,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            child: Icon(
                              Icons.search_rounded,
                              size: 30,
                              color: Colors.black54,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: List.generate(dataSurat.length, (index) {
                          return InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, '/detail');
                            },
                            child: Container(
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 58, 159, 88),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(20),
                                      bottomLeft: Radius.circular(20)),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black45,
                                        blurRadius: 2,
                                        offset: Offset(
                                          3,
                                          2.7,
                                        ))
                                  ]),
                              margin: EdgeInsets.only(bottom: 15),
                              child: Column(
                                children: [
                                  Container(
                                    // margin: EdgeInsets.only(top: 20),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          // mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Container(
                                                margin:
                                                    EdgeInsets.only(right: 20),
                                                width: 40,
                                                height: 30,
                                                decoration: BoxDecoration(
                                                    color: Colors.black12,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100)),
                                                child: Text(
                                                  dataSurat[index].number.toString(),
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      color: Colors.white),
                                                  textAlign: TextAlign.center,
                                                )),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    Text(
                                                      dataSurat[index].name.transliteration.id,
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          letterSpacing: 1,
                                                          color: Colors.white),
                                                    )
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    Row(
                                          
                                                      children: [
                                                        Text(
                                                          dataSurat[index].revelation.id,
                                                          style: TextStyle(
                                                              fontSize: 11,
                                                              fontWeight:
                                                                  FontWeight.bold,
                                                              letterSpacing: 0.7,
                                                              color:
                                                                  Colors.white54),
                                                        ),
                                                        Text(' - ${dataSurat[index].numberOfVerses.toString()} ayat',
                                                            style: TextStyle(
                                                                fontSize: 11,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color: Colors
                                                                    .white54))
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              dataSurat[index].name.short,
                                              style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white,
                                                fontSize: 16.5,
                                              ),
                                              textAlign: TextAlign.end,
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 7),
                                              child: Icon(
                                                Icons.keyboard_arrow_right,
                                                color: Colors.white38,
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
