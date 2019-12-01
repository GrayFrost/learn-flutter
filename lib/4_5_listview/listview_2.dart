import 'package:flutter/material.dart';

class ListViewDemo2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('list'),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        height: 200,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              width: 160,
              color: Colors.lightBlue,
            ),
            Container(width: 160, color: Colors.amber),
            Container(
              width: 160,
              color: Colors.pink,
              child: Column(
                children: <Widget>[
                  Text(
                    '水平',
                    style: TextStyle(color: Colors.red, fontSize: 36),
                  ),
                  Text('列表',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 36)),
                  Icon(Icons.list)
                ],
              ),
            ),
            Container(
              width: 160,
              color: Colors.purple,
            )
          ],
        ),
      ),
    );
  }
}
