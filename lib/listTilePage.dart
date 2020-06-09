import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


class listTilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: new Scaffold(
            appBar: new AppBar(
              title: new Text("List Tile Page"),
            ),
            body: new Center(
              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.check_circle_outline),
                    trailing: new Column(
                      children: <Widget>[
                        new Container(
                          child: new IconButton(
                            icon: new Icon(Icons.more_vert),
                            onPressed: () {
                              Fluttertoast.showToast(
                                  msg: "This is Center Short Toast",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,
                                  timeInSecForIosWeb: 1,
                                  backgroundColor: Colors.red,
                                  textColor: Colors.white,
                                  fontSize: 16.0
                              );
                            },
                          ),
                          //margin: EdgeInsets.only(top: 25.0),
                        )
                      ],
                    ),
                    title: Text("Item n°= 1"),
                    subtitle: Text("blablabla.."),
                  ),
                  ListTile(
                    leading: Icon(Icons.check_circle_outline),
                    trailing: Icon(Icons.more_vert),
                    title: Text("Item n°= 2"),
                    subtitle: Text("blablabla.."),
                  ),
                  ListTile(
                    leading: Icon(Icons.check_circle_outline),
                    trailing: Icon(Icons.more_vert),
                    title: Text("Item n°= 3"),
                    subtitle: Text("blablabla.."),
                  )
                ],
              ),
            )));
  }
}
