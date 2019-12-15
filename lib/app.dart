import 'package:flutter/material.dart';
import './chat/message_page.dart';
import './contacts/contacts.dart';
import './personal/personal.dart';

class App extends StatefulWidget {
  @override
  AppState createState() => AppState();
}

class AppState extends State<App> {
  var _currentIndex = 0;

  // 聊天页面
  MessagePage message;
  // 好友页面
  Contacts contacts;
  // 我的页面
  Personal me;
  currentPage() {
    switch (_currentIndex) {
      case 0:
        if (message == null) {
          message = MessagePage();
        }
        return message;
      case 1:
        if (contacts == null) {
          contacts = Contacts();
        }
        return contacts;
      case 2:
        if (me == null) {
          me = Personal();
        }
        return me;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('即使通信'),
        actions: <Widget>[],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: ((index) {
          setState(() {
            _currentIndex = index;
          });
        }),
        items: [
          BottomNavigationBarItem(
            title: Text('聊天'),
            icon: Icon(Icons.chat)
          ),
          BottomNavigationBarItem(
            title: Text('好友'),
            icon: Icon(Icons.person)
          ),
          BottomNavigationBarItem(
            title: Text('我的'),
            icon: Icon(Icons.home)
          ),
        ],
      ),
      body: currentPage(),
    );
  }
}
