import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(title: Text('app bar'),),
        body: Center(
          child: Container(child: Text('scaffold body'),),
        ),
      ),
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.white,
        splashColor: Colors.transparent,
        tooltipTheme: TooltipThemeData(verticalOffset: -100000)
      ),
    );
  }
}