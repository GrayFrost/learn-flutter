import 'package:flutter/material.dart';

class ListViewDemo3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<String> items = List<String>.generate(500, (i) => "Item $i");
    return Scaffold(
      appBar: AppBar(
        title: Text('listview'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
              leading: Icon(Icons.phone), title: Text('${items[index]}'));
        },
      ),
    );
  }
}
