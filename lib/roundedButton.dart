import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class roundedButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: new Scaffold(
        appBar: new AppBar(
          title: new Text("Rounded Button"),
          elevation: 0.0,
        ),
        body: Builder(
          builder: (context) => Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [Colors.blue, Colors.blueGrey],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            )),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    child: Text(
                      "Yes",
                      style: new TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                    color: Colors.green,
                    onPressed: () {
                      Scaffold.of(context).showSnackBar(new SnackBar(
                        content: Text("Your choice is selected.."),
                        duration: Duration(seconds: 2),
                      ));
                    },
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(
                          color: Colors.white,
                        )),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  RaisedButton(
                    child: Text(
                      "No",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                    color: Colors.red,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.pop(context);
                      Fluttertoast.showToast(
                          msg: "Your Choice is canceled..",
                          toastLength: Toast.LENGTH_SHORT,
                          timeInSecForIosWeb: 1,
                          fontSize: 16.0);
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(
                          color: Colors.white,
                        )),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
