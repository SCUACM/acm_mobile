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
      appBar: AppBar(
        title: const Text("SCU ACM")
      ),
      body: Center(
        child: Text("Welcome to the SCU ACM app!")
      )
    );
  }
}