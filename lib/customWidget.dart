import 'package:flutter/material.dart';

class customWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.lightBlue,
      margin: const EdgeInsets.all(20.0),
      child: new Container(
        color: Colors.lightBlueAccent,
        margin: const EdgeInsets.all(20.0),
        child: new Container(
          color: Colors.lightGreenAccent,
          margin: const EdgeInsets.all(20.0),
          child: new Container(
            color: Colors.blue,
            margin: const EdgeInsets.all(20.0),
            child: new Container(
              color: Colors.greenAccent,
              margin: const EdgeInsets.all(20.0),
              child: new Container(
                color: Colors.red,
                margin: const EdgeInsets.all(20.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
