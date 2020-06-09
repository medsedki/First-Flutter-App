import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class toastType extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: new Scaffold(
        appBar: new AppBar(
          title: new Text("Toast Type"),
        ),
        body: new Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ButtonTheme(
                minWidth: 200.0,
                height: 40.0,
                child: RaisedButton(
                  child: Text("Show Top Short Toast"),
                  color: Colors.lightGreen,
                  onPressed: () {
                    Fluttertoast.showToast(
                        msg: "This is a Top Short Toast",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.TOP,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.lightGreen,
                        textColor: Colors.white,
                        fontSize: 16.0);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
              ),
              ButtonTheme(
                minWidth: 200.0,
                height: 40.0,
                child: RaisedButton(
                  //padding: const EdgeInsets.all(30.0),
                  child: Text("Show Center Toast"),
                  color: Colors.red,
                  onPressed: () {
                    Fluttertoast.showToast(
                        msg: "This is Center Short Toast",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
              ),
              ButtonTheme(
                minWidth: 200.0,
                height: 40.0,
                child: RaisedButton(
                  child: Text("Show Bottom Toast"),
                  color: Colors.redAccent,
                  onPressed: () {
                    Fluttertoast.showToast(
                        msg: "This is Center Short Toast",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.redAccent,
                        textColor: Colors.white,
                        fontSize: 16.0);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
              ),
              ButtonTheme(
                  minWidth: 200.0,
                  height: 40.0,
                  child: RaisedButton(
                    color: Colors.green,
                    child: Text("Show Long Toast"),
                    onPressed: () {
                      Fluttertoast.showToast(
                          msg: "This is Long Toast",
                          toastLength: Toast.LENGTH_LONG,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.green,
                          textColor: Colors.white,
                          fontSize: 16.0);
                    },
                  )),
              Padding(
                padding: const EdgeInsets.all(10.0),
              ),
              ButtonTheme(
                minWidth: 200.0,
                height: 40.0,
                child: RaisedButton(
                  child: Text("Show Short Toast"),
                  color: Colors.greenAccent,
                  onPressed: () {
                    Fluttertoast.showToast(
                        msg: "This is Short Toast",
                        toastLength: Toast.LENGTH_SHORT,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.greenAccent,
                        textColor: Colors.white,
                        fontSize: 16.0);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
