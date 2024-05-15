//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

//import 'package:flutter/widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

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
        body: Align(
            alignment: Alignment.topLeft,
            child: Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.10,
                    top: MediaQuery.of(context).size.height * 0.10),
                child: const Text(
                  "Welcome, Max! 👋",
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.left,
                ))));
  }
}
