import 'package:flutter/material.dart';

class ListViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List view'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(leading: Icon(Icons.alarm), title: Text('alarm')),
          ListTile(leading: Icon(Icons.alarm), title: Text('alarm')),
          ListTile(leading: Icon(Icons.alarm), title: Text('alarm')),
          ListTile(leading: Icon(Icons.alarm), title: Text('alarm')),
          ListTile(leading: Icon(Icons.alarm), title: Text('alarm')),
          ListTile(leading: Icon(Icons.alarm), title: Text('alarm')),
          ListTile(leading: Icon(Icons.alarm), title: Text('alarm')),
          ListTile(leading: Icon(Icons.alarm), title: Text('alarm')),
        ],
      ),
    );
  }
}
