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

  _popupMenuItem(String title, {String imagePath, IconData icon}) {
    return PopupMenuItem(
        child: Row(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(title, style: TextStyle(color: Colors.white)),
        )
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('即使通信'),
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              //跳转至搜索页面
              Navigator.pushNamed(context, 'search');
            },
            child: Icon(
              //搜索图标
              Icons.search,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 30.0, right: 20.0),
            child: GestureDetector(
              onTap: () {
                showMenu(
                    context: context,
                    position: RelativeRect.fromLTRB(500.0, 76.0, 10.0, 0),
                    items: <PopupMenuEntry>[
                      _popupMenuItem('发起会话'),
                      _popupMenuItem('添加好友'),
                      _popupMenuItem('联系客服')
                    ]);
              },
              child: Icon(Icons.add),
            ),
          )
        ],
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
          BottomNavigationBarItem(title: Text('聊天'), icon: Icon(Icons.chat)),
          BottomNavigationBarItem(title: Text('好友'), icon: Icon(Icons.person)),
          BottomNavigationBarItem(title: Text('我的'), icon: Icon(Icons.home)),
        ],
      ),
      body: currentPage(),
    );
  }
}
