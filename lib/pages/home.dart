//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SCU ACM")
      ),
      body: const Center(
        child: Text("Welcome to the SCU ACM app!")
      )
    );
  }
}