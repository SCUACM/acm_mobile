import 'package:flutter/material.dart';

class RandomUnsplashImage extends StatelessWidget {
  final double width;
  final double height;

  const RandomUnsplashImage({required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    String imageUrl =
        'https://source.unsplash.com/random/${width.toInt()}x${height.toInt()}';
    return Image.network(
      imageUrl,
      width: width,
      height: height,
      fit: BoxFit.cover,
    );
  }
}
