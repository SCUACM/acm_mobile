import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/src/material/material_state.dart';
import 'dart:ui';
import 'package:acm_mobile/test/ScrollableEventWidget.dart';

import 'club_info.dart';

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
      body: SingleChildScrollView(
        child: Column(
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
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => club_info()),
                    );
                  },
                  child: const Text('DEBUG: Go to sample club screen'),
                ),
                ClubEventWidget("Full Stack Workshop", "Mon Jan 1",  "5 - 6pm",  "SCDI 1302", "flyer1.png", "ACM"),
                ClubEventWidget("AI Project Dev", "May 22", "5:30 - 6:30 pm",  "SCDI 2306", "flyer2.png", "ACM"),
                ClubEventWidget("ACM-W: Git Workshop", "May 22", "6:00- 7:00 pm", "Bergin 116", "flyer3.png", "ACM")
              ],
            ),
            //Expanded(child: ScrollableEventWidget()),
            // Use ScrollableEventWidget here
          ],
        ),
      ),
    );
  }

  Container ClubEventWidget(String eventTitle, String eventDate, String eventTime, String eventLocation, String imageName, String clubName) {
    return Container(
                child: Column(
              children: [
                Container(
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
                              flex: 9, // takes 30% of available width
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Image.asset(
                                            'assets/images/calendar.png',
                                            height: 40)),
                                    SizedBox(height: 20),
                                    Text(
                                      eventTitle,
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
                                      "$eventDate - $eventTime - $eventLocation",
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.white),
                                      maxLines: 4,
                                      softWrap: true,
                                    )),
                                    SizedBox(height: 20),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: ElevatedButton(
                                            onPressed: () {},
                                            child: Text(clubName), style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                const Color(0xff15416F)),
                                        foregroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Colors.white))))
                                  ]),
                            ),
                            Expanded(
                              flex: 11,
                              child: Align(
                                  alignment: Alignment.center,
                                  child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.circular(20.0),
                                      child: Image.asset(
                                          'assets/images/$imageName'))),
                            )
                          ]),
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Expanded(
                                child: ElevatedButton(
                                    child: Text("I'll attend!"),
                                    onPressed: () {},
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                const Color(0xff5FA8FF)),
                                        foregroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Colors.white)))),
                            SizedBox(width: 10),
                            ElevatedButton(
                                child: Text("Comment"),
                                onPressed: () {},
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            const Color(0xff9B8BE0)),
                                    foregroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.white)))
                          ],
                        ),
                      ],
                    ))
              ],
            ));
  }
}
