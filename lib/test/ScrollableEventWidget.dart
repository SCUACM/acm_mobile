import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScrollableEventWidget extends StatelessWidget {
  // Define your list of items
  final List<String> items = List<String>.generate(100, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('${items[index]}'),
        );
      },
    );
  }
}
