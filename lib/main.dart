import 'package:flutter/material.dart';
import 'package:learn_flutter/4_1_container/container.dart';

void main() => runApp(MyContainer());

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