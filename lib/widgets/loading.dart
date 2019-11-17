// 加载组件
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Loading {
  static bool isLoading = false;
  static void showLoading(BuildContext context){
    if(!isLoading){
      isLoading = true;
      showGeneralDialog(
        context: context,
        pageBuilder: (BuildContext context, Animation animation, Animation secondaryAnimation){
          return Text('123'); // TODO: widget
        }
      ).then((v) {
        isLoading = false;
      });
    }
  }

  static void hideLoading(BuildContext context){
    if(isLoading){
      Navigator.of(context).pop();
    }
  }
}