import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  //runApp(new MaterialApp(home: new ApplicationAppBar()));
  runApp(new snackbarPage(""));
}

class snackbarPage extends StatelessWidget {
  @override
  final String title;

  final GlobalKey<ScaffoldState> _skey = new GlobalKey<ScaffoldState>();

  //constractor
  snackbarPage(this.title);

  void showSnackbar() {
    _skey.currentState.showSnackBar(new SnackBar(
      content: new Text('Snackbar Activated'),
      backgroundColor: Colors.blueAccent,
    ));
  }

  int generateNumbers() {
    var r = Random();
    int i = r.nextInt(20);
    return i;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _skey,
      appBar: new AppBar(
        //shadow -->
        //elevation: 0.0,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: (){

              },
              child: Icon(Icons.more_vert),
            ),
          )
        ],
        actionsIconTheme: IconThemeData(
          color: Colors.blueGrey,
          size: 30.0,
        ),
        //bottom: PreferredSize(),
        title: new Text(title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              title + ", with the random number ${generateNumbers()}",
              style: new TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
              ),
            ),
            new RaisedButton(
              onPressed: () {
                showSnackbar();
              },
              child: new Text("Activate SnackBar"),
            ),
          ],
        ),
      ),
    );
  }
}
