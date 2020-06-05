import 'package:flutter/material.dart';

void main() {
  runApp(new alertDialogPage(""));
}

class alertDialogPage extends StatelessWidget {
  final String title;

  //constractor
  alertDialogPage(this.title);

  @override
  Widget build(BuildContext context) {
    //show Alert function
    void showAlertDialog() {
      showDialog(
          context: context,
          child: new AlertDialog(
            title: new Text("Alert Dialog Test"),
            content: new Text("Successful showed :)"),
            actions: <Widget>[
              new IconButton(
                  icon: new Icon(Icons.alarm_off),
                  onPressed: () {
                    Navigator.pop(context);
                  })
            ],
          )
      );
    }

    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: new Center(
        child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new RaisedButton(
                  onPressed: () {
                    showAlertDialog();
                  },
                  child: new Text("Show Alert")),
            ]),
      ),
    );
  }
}
