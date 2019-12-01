import 'package:flutter/material.dart';
import 'package:learn_flutter/4_3_text/text.dart';

void main() => runApp(TextDemo());

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