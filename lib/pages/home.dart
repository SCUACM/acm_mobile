import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:acm_mobile/test/ScrollableEventWidget.dart';

import 'club_info.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("SCU ACM")),
      body: Column(
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
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.10,
                    top: MediaQuery.of(context).size.height * 0.10),
                child: const Text(
                  "Welcome, Max! 👋",
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.left,
                )),
          ),
          Expanded(child: ScrollableEventWidget()),
          // Use ScrollableEventWidget here
        ],
      ),
    );
  }
}
