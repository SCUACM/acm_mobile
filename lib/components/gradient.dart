import 'package:flutter/material.dart';

class GradientBackgroundWidget extends StatelessWidget {
  final Widget child; // Add a final Widget to hold the child

  const GradientBackgroundWidget({Key? key, required this.child})
      : super(key: key); // Modify the constructor to require a child

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration( // Add const keyword
        gradient: LinearGradient(
          // begin: Alignment.topLeft,
          // end: Alignment.bottomRight,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            // Colors.blue,
            // Colors.red,
            Color(0xFF4B67FF),
            Colors.white,
          ],
        ),
      ),
      child: child, // Set the passed child as the child of the Container
    );
  }
}
