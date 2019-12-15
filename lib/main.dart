import 'package:flutter/material.dart';
import './app.dart';
import './loading.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import './search.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: '聊天室',
  theme: mDefaultTheme,
  routes: <String, WidgetBuilder>{
    "app": (BuildContext context) => new App(),
    "friends": (_) => new WebviewScaffold(
      url: 'https://flutter.io/',
      appBar: new AppBar(
        title: new Text('Flutter 官网'),
      ),
      withZoom: true,
      withLocalStorage: true,
    ),
    "search": (BuildContext context) => new Search()
  },
  home: new LoadingPage(),
));

final ThemeData mDefaultTheme = new ThemeData(
  primaryColor: Colors.green,
  cardColor: Colors.green,
  scaffoldBackgroundColor: Color(0xFFebebeb)
);