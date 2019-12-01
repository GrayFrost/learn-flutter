import 'package:flutter/material.dart';
import 'package:learn_flutter/4_5_listview/listview_3.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Hello World',
      home: ListViewDemo3()
    );
  }
}