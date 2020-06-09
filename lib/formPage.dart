import 'package:flutter/material.dart';

class formPage extends StatefulWidget {
  @override
  _ApplicationFormPageState createState() => new _ApplicationFormPageState();
}

class _ApplicationFormPageState extends State<formPage> {
  String ptext = 'A';
  String mariedStatus = "single";
  String check = "Sign up for the newspaper and related articles";
  bool termChecked = false;
  List<String> locations = ["A", "B", "C", "D"];

  String f_name = '';
  String l_name = '';
  String email = '';
  int phone = 0;
  int age = 0;
  String password = '';

  final _formkey = GlobalKey<FormState>();

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

    void onPressSubmit(BuildContext context) {
      if (_formkey.currentState.validate()) {
        _formkey.currentState.save();

        print("firstName : " + f_name);
        print("lastName : " + l_name);
        print("Email : " + email);
        print("Phone Number  : " + phone.toString());
        print("Age : " + age.toString());
        print("Password : " + password);
        print("City : " + ptext);
        print("Maried Status : " + mariedStatus);
        print("Checked : " + termChecked.toString());

        //don't work...
        Scaffold.of(context).showSnackBar(SnackBar(
          content: Text(
            "Nice :)",
            textAlign: TextAlign.center,
          ),
          duration: Duration(seconds: 2),
          backgroundColor: Colors.blueAccent,
        ));
      }
    }

    if (termChecked) {
      _onPressed = () {
        //to submit the form
        onPressSubmit(context);
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
                  key: _formkey,
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: "Enter First Name",
                            hintText: "First Name"),
                        keyboardType: TextInputType.text,
                        maxLength: 20,
                        //text imput validation
                        validator: (value) {
                          if (value.isEmpty) return 'Please enter a first name';
                        },
                        //form submission
                        onSaved: (value) {
                          setState(() {
                            f_name = value;
                          });
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: "Enter Last Name",
                            hintText: "Last Name"),
                        keyboardType: TextInputType.text,
                        maxLength: 20,
                        validator: (value) {
                          if (value.isEmpty) return 'Please enter a last name';
                        },
                        onSaved: (value) {
                          setState(() {
                            l_name = value;
                          });
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: "Enter Email", hintText: "Email"),
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value.isEmpty) return 'Please enter an email';
                        },
                        onSaved: (value) {
                          setState(() {
                            email = value;
                          });
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: "Enter Phone Number",
                            hintText: "Phone Number"),
                        keyboardType: TextInputType.phone,
                        maxLength: 12,
                        validator: (value) {
                          if (value.isEmpty)
                            return 'Please enter a phone number';
                        },
                        onSaved: (value) {
                          setState(() {
                            phone = int.tryParse(value);
                          });
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: "Enter Age", hintText: "Age"),
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value.isEmpty) return 'Please enter age';
                        },
                        onSaved: (value) {
                          setState(() {
                            age = int.tryParse(value);
                          });
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: "Enter Password", hintText: "Password"),
                        validator: (value) {
                          if (value.isEmpty) return 'Please enter password';
                          if (value.length < 8)
                            return 'Password should be more than 8 caracteres';
                        },
                        onSaved: (value) {
                          setState(() {
                            password = value;
                          });
                        },
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
                              onChanged: (value) {
                                setState(() {
                                  mariedStatus = value;
                                });
                              },
                            ),
                          ),
                          Expanded(
                            child: RadioListTile<String>(
                              title: const Text('Married'),
                              value: 'married',
                              groupValue: mariedStatus,
                              onChanged: (value) {
                                setState(() {
                                  mariedStatus = value;
                                });
                              },
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
