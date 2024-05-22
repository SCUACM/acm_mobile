import 'package:acm_mobile/test/RandomUnsplashImage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScrollableEventWidget extends StatelessWidget {
  // Define your list of items
  final List<String> items = List<String>.generate(100, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(
          color: Colors.white10,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20.0),
            bottomLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0),
          ),
          border: Border.all(
            color: Colors.black,
            width: 1.0,
          ),
        ),
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Column(children: [
              ListTile(
                title: Text('${items[index]}'),
              ),
              const RandomUnsplashImage(width: 250, height: 250),
              const Divider(),
            ]);
          },
        ));
  }
}
