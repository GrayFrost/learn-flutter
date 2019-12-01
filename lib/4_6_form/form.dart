import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> loginKey = new GlobalKey<FormState>();
  String userName;
  String password;
  void login() {
    var loginForm = loginKey.currentState;
    if (loginForm.validate()) {
      loginForm.save();
      print('userName: ' + userName + 'password: ' + password);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form表单实例',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Form表单实例'),
        ),
        body: Form(
          key: loginKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: '请输入用户名'),
                onSaved: (value) {
                  userName = value;
                },
                onFieldSubmitted: (value) {},
              ),
              TextFormField(
                decoration: InputDecoration(labelText: '请输入密码'),
                obscureText: true,
                validator: (value) {
                  return value.length < 6 ? '密码长度不够6位' : null;
                },
                onSaved: (value) {
                  password = value;
                },
              ),
              new SizedBox(
                width: 340,
                height: 42,
                child: RaisedButton(
                  onPressed: login,
                  child: Text(
                    '登录',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
