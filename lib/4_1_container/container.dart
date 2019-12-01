import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('容器组件示例'),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.orange,
                width: 8,
              ),
              borderRadius: BorderRadius.all(Radius.circular(8))),
          child: Text(
            'Flutter',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 28),
          ),
        ),
      ),
    );
  }
}
