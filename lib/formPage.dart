import 'package:flutter/material.dart';

class formPage extends StatefulWidget {
  @override
  _ApplicationFormPageState createState() => new _ApplicationFormPageState();
}

class _ApplicationFormPageState extends State<formPage> {
  String ptext = '';
  String mariedStatus = "single";
  String check = "Sign up for the newspaper and related articles";
  bool termChecked = false;
  List<String> locations = ["A", "B", "C", "D"];

  void takecity(value) {
    setState(() {
      ptext = value;
    });
  }

  void checkClick(val) {
    setState(() {
      termChecked = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    var _onPressed;

    if (termChecked) {
      _onPressed = () {
        //don't work...
        Scaffold.of(context).showSnackBar(SnackBar(
          content: Text(
            "Nice :)",
            textAlign: TextAlign.center,
          ),
          duration: Duration(seconds: 2),
          backgroundColor: Colors.blueAccent,
        ));
      };
    }

    return Material(
      child: new Scaffold(
        appBar: new AppBar(
          centerTitle: true,
          title: new Text("Complete the Form"),
          elevation: 10.0,
        ),
        body: Builder(
          builder: (context) => Material(
            child: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                child: Form(
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: "Enter First Name",
                            hintText: "First Name"),
                        keyboardType: TextInputType.text,
                        maxLength: 20,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: "Enter Last Name",
                            hintText: "Last Name"),
                        keyboardType: TextInputType.text,
                        maxLength: 20,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: "Enter Email", hintText: "Email"),
                        keyboardType: TextInputType.emailAddress,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: "Enter Phone Number",
                            hintText: "Phone Number"),
                        keyboardType: TextInputType.phone,
                        maxLength: 12,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: "Enter Age", hintText: "Age"),
                        keyboardType: TextInputType.number,
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: "Enter Password", hintText: "Password"),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          DropdownButton(
                            hint: Text("Please select your city :"),
                            items: locations.map(
                              (location) {
                                return DropdownMenuItem(
                                  child: Text(location),
                                  value: location,
                                );
                              },
                            ).toList(),
                            onChanged: (String value) {
                              takecity(value);
                            },
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Center(
                            child: Text(
                              ptext,
                              textAlign: TextAlign.center,
                              style: new TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Expanded(
                            child: RadioListTile<String>(
                              title: const Text('Single'),
                              value: 'single',
                              groupValue: mariedStatus,
                            ),
                          ),
                          Expanded(
                            child: RadioListTile<String>(
                              title: const Text('Married'),
                              value: 'married',
                              groupValue: mariedStatus,
                            ),
                          ),
                        ],
                      ),
                      CheckboxListTile(
                        title: Text(check),
                        value: termChecked,
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool val) {
                          checkClick(val);
                        },
                      ),
                      RaisedButton(
                        color: Colors.blue,
                        textColor: Colors.white,
                        child: Text("Confirm"),
                        onPressed: _onPressed,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/*

Scaffold.of(context).showSnackBar(SnackBar(
                              content: Text(
                                "Nice :)",
                                textAlign: TextAlign.center,
                              ),
                              duration: Duration(seconds: 2),
                              backgroundColor: Colors.blueAccent,
                            ));

 */

