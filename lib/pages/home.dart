//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:ui';

import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  final String assetName = 'assets/images/calendar_icon.svg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("SCU ACM")),
      body: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.05,
                    top: MediaQuery.of(context).size.height * 0.02),
                child: const Text(
                  "Welcome, Arthur! 👋",
                  style: TextStyle(fontSize: 26),
                  textAlign: TextAlign.left,
                )),
          ),
          Column(
            children: [
              Container(
                  height: 400,
                  decoration: BoxDecoration(
                      color: const Color(0xff1C548D),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.all(20),
                  alignment: Alignment.topLeft,
                  child: Column(
                    children: [
                      Container(
                        height: 300,
                        child: Row(children: [
                          Expanded(
                            flex: 4, // takes 30% of available width
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Align(alignment: Alignment.topLeft, child: Image.asset('assets/images/calendar.png', height: 40)),
                                  SizedBox(height: 20),
                                  Text(
                                    "Full Stack Workshop",
                                    style: TextStyle(
                                        fontSize: 24,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                    maxLines: 4,
                                    softWrap: true,
                                  ),
                                  SizedBox(height: 20),
                                  Flexible(
                                      child: Text(
                                    "Mon Jan 1 - 5:00pm - SCDI 1302",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                    maxLines: 4,
                                    softWrap: true,
                                  )),
                                  // Row(children: [
                                  //   ElevatedButton(onPressed: () {}, child: Text("ACM")),
                                  //   ElevatedButton(onPressed: () {}, child: Text("ACM - W"))
                                  // ],)

                                  //ADD TAGS
                                ]),
                          ),
                          Expanded(
                            flex: 5,
                            child: Align(
                                alignment: Alignment.topCenter,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20.0),
                                    child: Image.asset(
                                        'assets/images/flyer1.png'))),
                          )
                        ]),
                      ),
                      Row(
                        children: [
                          Expanded(child: ElevatedButton(child: Text("I'll attend!"), onPressed: () {}, style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(const Color(0xff5FA8FF)), foregroundColor: MaterialStateProperty.all<Color>(Colors.white)))), 
                          SizedBox(width: 10),
                          ElevatedButton(child: Text("Comment"), onPressed: () {}, style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(const Color(0xff9B8BE0)), foregroundColor: MaterialStateProperty.all<Color>(Colors.white)))
                        ],
                      )
                    ],
                  ))
            ],
          ),
          //Expanded(child: ScrollableEventWidget()),
          // Use ScrollableEventWidget here
        ],
      ),
    );
  }
}
