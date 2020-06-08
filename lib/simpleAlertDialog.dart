import 'package:flutter/material.dart';

class simpleAlertDialog extends StatelessWidget {
  final String title;

  //constractor
  simpleAlertDialog(this.title);

  SimpleDialog _sp;

  @override
  Widget build(BuildContext context) {
    ///
    //dialog 1
    void Dialog() {
      _sp = new SimpleDialog(
        title: new Text("Choose from one"),
        children: <Widget>[
          new SimpleDialogOption(
            child: new Text("YES"),
            onPressed: () {
              print("Yes Clicked");
            },
          ),
          new SimpleDialogOption(
            child: new Text("No"),
            onPressed: () {
              print("No Clicked");
            },
          ),
          new SimpleDialogOption(
            child: new Text("Close"),
            onPressed: () {
              print("Close Clicked");
              Navigator.pop(context);
            },
          ),
        ],
      );

      showDialog(context: context, child: _sp);
    }

    ///
    //Dialog 2
    Widget remindButton = FlatButton(
      child: Text("Remind me later"),
      onPressed: () {},
    );
    Widget cancelButton = FlatButton(
      child: Text("Cancel"),
      onPressed: () {
        Navigator.pop(context);
      },
    );
    Widget launchButton = FlatButton(
      child: Text("Launch missile"),
      onPressed: () {},
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Notice"),
      content: Text(
          "Launching this missile will destroy the entire universe. Is this what you intended to do?"),
      actions: [
        remindButton,
        cancelButton,
        launchButton,
      ],
    );

    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: new Center(
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              //flex:2 ,
              child: new RaisedButton(
                onPressed: () {
                  print('pressed');
                  Dialog();
                },
                child: new Text("Show Simple Dialog 1"),
              ),
            ),
            Expanded(
              //flex:2 ,
              child: new RaisedButton(
                onPressed: () {
                  print('pressed');
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return alert;
                    },
                  );
                },
                child: new Text("Show Simple Dialog 2"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
