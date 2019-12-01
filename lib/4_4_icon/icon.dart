import 'package:flutter/material.dart';

class IconDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'icon',
      home: Scaffold(
        appBar: AppBar(title: Text('icon demo')),
        body: Column(
          children: <Widget>[
            Icon(Icons.phone, color: Colors.orange),
            IconButton(
              icon: Icon(
                Icons.volume_up,
                size: 48,
              ),
              tooltip: 'click me',
              onPressed: () {
                print('按下操作');
              },
            ),
            RaisedButton(
              onPressed: (){
                print('按下2');
              },
              child: Row(
                children: <Widget>[
                  Icon(Icons.watch, color: Colors.cyan,),
                  Text('raise me')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
