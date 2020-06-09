import 'package:flutter/material.dart';

var colorPurple = Colors.purple;
const darkPurpleColor = Color(0xFF880E4F);
var lightPurpleColor = Colors.purple[300];
var colorBlueShade400 = Colors.blue.shade400;

void showAlertFunc(BuildContext mContext, String mTitle, String mContent, String mYesBtn, String mNoBtn) {
  showDialog(
      context: mContext,
      child: new AlertDialog(
        backgroundColor: Colors.black12,
        title: new Text(
          mTitle,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 25.0,
          ),
        ),
        content: new Text(
          mContent,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.w200),
        ),
        actions: <Widget>[
          RaisedButton(
            child: Text(
              mYesBtn,
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
            ),
            onPressed: () {
              Navigator.pop(mContext);
            },
          ),
          RaisedButton(
            child: Text(
              mNoBtn,
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
            ),
            onPressed: () {
              Navigator.pop(mContext);
            },
          ),
        ],
      ));
}
