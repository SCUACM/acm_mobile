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
  
  void updateFirebase() {
    firestore.collection("cities").doc("new-city-id").set({"name": "Chicago"});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SCU ACM")
      ),
      body: Center(
        child: Row(
          children: [
            Text("Welcome to the SCU ACM app!"),
            TextButton(onPressed: updateFirebase, child: Text("Firebase test")),

          ],
        ),
      )
    );
  }
}