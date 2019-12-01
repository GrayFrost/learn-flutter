import 'package:flutter/material.dart';

class ImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
        child: Image.network(
      'https://avatars0.githubusercontent.com/u/18083507?s=460&v=4',
      fit: BoxFit.fitWidth,
    ));
  }
}
