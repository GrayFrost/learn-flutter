import 'package:flutter/material.dart';
import 'package:learn_flutter/4_5_listview/listview.dart';

void main() => runApp(ListViewDemo());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Hello World',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello World'),
        ),
        body: Center(
          child: Text('body'),
        ),
      ),
    );
  }
}