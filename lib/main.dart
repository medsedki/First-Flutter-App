import 'package:flutter/material.dart';
import 'package:flutterapp/customWidget.dart';
import 'package:flutterapp/toastType.dart';

import 'alertDialogPage.dart';
import 'choicesPage.dart';
import 'listTilePage.dart';
import 'simpleAlertDialog.dart';
import 'snackbarPage.dart';

void main() {
  //runApp(MyApp());

  //Text Affichage test
  /*runApp(new Center(
          child: new Text(
    "This is my first flutter application :)",
    textDirection: TextDirection.ltr,
  )) //Center
      );*/

  //StatelessWidget test
  //runApp(new application());

  //StatefulWidget test
  //runApp(new applicationTest());

  //Container Widget test
  //runApp(new containerWidgetTest());

  //Test Scaffold: Row/Column
  //runApp(new Application());

  //Test Basic List Widget
  //runApp(new MaterialApp(home: new ApplicationListWidget()));

  //Test List Widget-Array List
  //runApp(new MaterialApp(home: new ApplicationListWidget2()));

  //Test ApplicationStack
  //runApp(new MaterialApp(home: new ApplicationStack()));

  //Test GridView
  //runApp(new MaterialApp(home: new ApplicationGrid()));

  //Working with AppBar
  //runApp(new MaterialApp(home: new ApplicationAppBar()));

  //Working with AppBar Leading & Action
  //runApp(new MaterialApp(home: new AppBarLeadingAndAction()));

  //Working with tabbar
  //runApp(new MaterialApp(home: new ApplicationTabbar()));

  //Container Widget and outside method
  //runApp(new MaterialApp(home: new containerWidget()));

  //Container Widget and outside method
  //runApp(new containerWidgetsFromOClass());

  //Test the Text Field Widget
  //runApp(new MaterialApp(home: new ApplicationTextField()));

  //Test the Buttons Widget and the Checkbox and the RadioButton and the Slider and the Switch
  //runApp(new MaterialApp(home: new ApplicationButtons()));

  //Test the Drawer and Router
  runApp(new MaterialApp(
      //to hide the red banner of the debug
      debugShowCheckedModeBanner: false,
      home: new ApplicationDrawer()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

//Test StatelessWidget
class application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'StatelessWidget',
      home: new Scaffold(
        body: new Container(
          color: Colors.green,
          child: new Container(
            color: Colors.yellow,
            margin: const EdgeInsets.all(30.0),
          ),
        ),
      ),
    );
  }
}

//StatefulWidget test
class applicationTest extends StatefulWidget {
  @override
  _applicationTestState createState() => _applicationTestState();
}

class _applicationTestState extends State<applicationTest> {
  String ttext = "";

  @override
  void initState() {
    ttext = "Click on this button";

    super.initState();
  }

  //to change the text_button on the onPressed
  void method1() {
    setState(() {
      ttext = "The text is been changed";
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'StatefullWidget',
      home: new Scaffold(
        body: new Center(
          child: new RaisedButton(
            onPressed: () {
              method1();
            },
            child: new Text(ttext),
          ),
        ),
      ),
    );
  }
}

//Container Widget test
class containerWidgetTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        body: new Container(
          //color: Colors.blue,
          child: new Text("This is my container"),
          height: 300.0,
          width: 300.0,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(20.0),
          decoration: new BoxDecoration(color: Colors.blue),
          transform: new Matrix4.rotationZ(0.5),
          foregroundDecoration:
              new BoxDecoration(color: Colors.deepPurpleAccent),
        ),
      ),
    );
  }
}

//Test Scaffold: Row/Column
class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Container',
      home: new Scaffold(
          body: new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text('this'),
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text('this'),
              new Text('is'),
              new Text('column'),
            ],
          ),
          new Text('Row'),
        ],
      )),
    );
  }
}

//Test Basic List Widget
class ApplicationListWidget extends StatefulWidget {
  @override
  _ApplicationState createState() => new _ApplicationState();
}

class _ApplicationState extends State<ApplicationListWidget> {
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new ListView(
      children: <Widget>[
        new ListTile(
          title: new Text('This is Title'),
          isThreeLine: true,
          subtitle: new Text('This is our Subtitle'),
          trailing: new Icon(Icons.arrow_forward),
        ),
        new ListTile(
          title: new Text('This is Title'),
          isThreeLine: true,
          subtitle: new Text('This is our Subtitle'),
          trailing: new Icon(Icons.close),
        ),
        new ListTile(
          title: new Text('This is Title'),
          isThreeLine: true,
          subtitle: new Text('This is our Subtitle'),
          trailing: new Icon(Icons.close),
        ),
      ],
    ));
  }
}

//Test List Widget-Array List
class ApplicationListWidget2 extends StatefulWidget {
  @override
  _ApplicationState2 createState() => new _ApplicationState2();
}

class _ApplicationState2 extends State<ApplicationListWidget2> {
  List<int> _listitems = new List();

  @override
  void initState() {
    // TODO: implement initState
    for (int i = 0; i < 50; i++) {
      _listitems.add(i);
      print(i);
    }
    print(_listitems);
    super.initState();
  }

  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("List Widget with Array List"),
        ),
        body: new ListView.builder(
            itemCount: _listitems.length,
            itemBuilder: (BuildContext context, int index) {
              return new ListTile(
                title: new Text('This is Title n°. $index'),
                isThreeLine: true,
                subtitle: new Text('This is our Subtitle'),
                trailing: new Icon(Icons.arrow_forward),
              );
            }));
  }
}

//Test Stack
class ApplicationStack extends StatefulWidget {
  @override
  _ApplicationStack createState() => new _ApplicationStack();
}

class _ApplicationStack extends State<ApplicationStack> {
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Stack(
      alignment: Alignment.center,
      children: <Widget>[
        new Card(
            color: Colors.pink,
            child: new Padding(
              padding: const EdgeInsets.all(200.0),
            )),
        new Card(
            color: Colors.green,
            child: new Padding(
              padding: const EdgeInsets.all(100.0),
            )),
        new Card(
            color: Colors.blue,
            child: new Padding(
              padding: const EdgeInsets.all(50.0),
            )),
        new Card(
            color: Colors.yellow,
            child: new Padding(
              padding: const EdgeInsets.all(10.0),
            )),
      ],
    ));
  }
}

//Test GridView
class ApplicationGrid extends StatefulWidget {
  @override
  _ApplicationStateGrid createState() => new _ApplicationStateGrid();
}

class _ApplicationStateGrid extends State<ApplicationGrid> {
  List<int> _items = new List();

  @override
  void initState() {
    for (int i = 0; i < 50; i++) {
      _items.add(i);
      print(i);
    }
    print(_items);
    super.initState();
  }

  Widget build(BuildContext context) {
    return new Scaffold(
        body: new GridView.builder(
            gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
            ),
            itemCount: _items.length,
            itemBuilder: (BuildContext context, int index) {
              return cards(index);
            }));
  }
}

Widget cards(val) {
  return new Card(
    color: Colors.pink,
    child: new Padding(
      padding: const EdgeInsets.all(10.0),
      child: Center(
        child: new Text(
          '$val',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    ),
  );
}

//Working with AppBar
class ApplicationAppBar extends StatefulWidget {
  @override
  _ApplicationStateAppBar createState() => new _ApplicationStateAppBar();
}

class _ApplicationStateAppBar extends State<ApplicationAppBar> {
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Working with AppBar'),
        backgroundColor: Colors.green,
        elevation: 30.0,
        //centerTitle: true,
        titleSpacing: 70.0,
        toolbarOpacity: 0.6,
      ),
    );
  }
}

//Working with AppBar Leading & Action
class AppBarLeadingAndAction extends StatefulWidget {
  @override
  _StateAppBarLeadingAction createState() => new _StateAppBarLeadingAction();
}

class _StateAppBarLeadingAction extends State<AppBarLeadingAndAction> {
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('AppBar Leading & Action'),
        leading: new Icon(Icons.menu),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.arrow_forward),
            onPressed: () {
              print('you pressed Arrow Button');
            },
          ),
          new IconButton(
              icon: new Icon(Icons.add),
              onPressed: () {
                print('you pressed Addition Button');
              }),
          new IconButton(
              icon: new Icon(Icons.close),
              onPressed: () {
                print('you pressed Close Button');
              }),
        ],
      ),
    );
  }
}

//Working with tabbar
class ApplicationTabbar extends StatefulWidget {
  @override
  _ApplicationStateTabbar createState() => new _ApplicationStateTabbar();
}

class _ApplicationStateTabbar extends State<ApplicationTabbar>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: "Application001",
        home: new Scaffold(
          appBar: new AppBar(
            title: new Text("Working with Tabbar"),
            bottom: new TabBar(controller: controller, tabs: [
              new Tab(
                //text: "TAB 1",
                icon: new Icon(Icons.home),
              ),
              new Tab(
                //text: "TAB 2",
                icon: new Icon(Icons.contact_phone),
              ),
              new Tab(
                //text: "TAB 3",
                icon: new Icon(Icons.settings),
              ),
            ]),
            backgroundColor: Colors.green,
          ),
          bottomNavigationBar: new Material(
            color: Colors.lightGreen,
            child: new TabBar(controller: controller, tabs: [
              new Tab(
                icon: new Icon(Icons.home),
              ),
              new Tab(
                icon: new Icon(Icons.contact_phone),
              ),
              new Tab(
                icon: new Icon(Icons.settings),
              ),
            ]),
          ),
          body: new TabBarView(
            controller: controller,
            children: <Widget>[
              new Center(
                child: new Text("Here it's the Home page"),
              ),
              new Center(
                child: new Text("Here it's the Contact page"),
              ),
              new Center(
                child: new Text("Here it's the Settings page"),
              ),
            ],
          ),
        ));
  }
}

//Container Widget and outside method
class containerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.red,
      margin: const EdgeInsets.all(15.0),
      child: new Container(
        color: Colors.green,
        margin: const EdgeInsets.all(15.0),
        child: new Container(
          color: Colors.blue,
          margin: const EdgeInsets.all(15.0),
          child: new Container(
            color: Colors.lightGreenAccent,
            margin: const EdgeInsets.all(15.0),
            child: new Container(
              color: Colors.lightBlueAccent,
              margin: const EdgeInsets.all(15.0),
              child: new Container(
                color: Colors.lightBlue,
                margin: const EdgeInsets.all(15.0),
                child: new Container(
                  color: Colors.lightGreen,
                  margin: const EdgeInsets.all(15.0),
                  child: _methodcustom(),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget _methodcustom() {
  return new Container(
    color: Colors.yellowAccent,
    margin: const EdgeInsets.all(15.0),
  );
}

//Container Widget imported from other class
class containerWidgetsFromOClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        body: new customWidgets(),
      ),
    );
  }
}

//Test the Text Field Widget
class ApplicationTextField extends StatefulWidget {
  @override
  _ApplicationStateTextField createState() => new _ApplicationStateTextField();
}

class _ApplicationStateTextField extends State<ApplicationTextField> {
  String ptext = '';

  Widget build(BuildContext context) {
    return new MaterialApp(
        title: "Text Field Widget",
        home: new Scaffold(
            appBar: new AppBar(
              backgroundColor: Colors.blue,
              title: new Text("Text Field Widget"),
            ),
            body: new Column(
              children: <Widget>[
                new TextField(
                    //when you're typing
                    /*onChanged: (String tval) {
                      setState(() {
                        ptext = tval;
                      });
                    }*/

                    //when you finish and confirm your text
                    onSubmitted: (String txt) {
                      setState(() {
                        ptext = txt;
                      });
                    },
                    decoration: new InputDecoration(
                        hintText: "Type something", labelText: "Description")),
                new Text(ptext)
              ],
            )));
  }
}

//Test the Buttons Widget
//Test the Checkbox
//Test the RadioButton
//Test the Slider
//Test the Switch
class ApplicationButtons extends StatefulWidget {
  @override
  _ApplicationStateButtons createState() => new _ApplicationStateButtons();
}

class _ApplicationStateButtons extends State<ApplicationButtons> {
  String ptext = '';
  bool checkvalue = false;

  //int radioValue = 0;
  String radioValue = '';
  double dVal = 0.0;
  bool switchStatus = false;

  void method(value) {
    setState(() {
      ptext = value;
    });
  }

  void method2(val) {
    setState(() {
      checkvalue = val;
      print('$checkvalue');
    });
  }

  void changeRadio(val) {
    setState(() {
      radioValue = val;
      print('$radioValue');
    });
  }

  void moveSlider(val) {
    setState(() {
      dVal = val;
      print('$dVal');
    });
  }

  void clickSwitch(val) {
    setState(() {
      switchStatus = val;
      print('$switchStatus');
    });
  }

  Widget build(BuildContext context) {
    return new MaterialApp(
        title: "Buttons Widget",
        home: new Scaffold(
          body: new Center(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new RaisedButton(
                  onPressed: () {
                    method("You Pressed on the Raised Button");
                  },
                  child: new Text("Raised Button"),
                ),
                new FlatButton(
                    onPressed: () {
                      method("You Pressed on the Flat Button");
                    },
                    child: new Text("Flat Button")),
                new Text(ptext),
                new Checkbox(
                  value: checkvalue,
                  onChanged: (bool checkbool) {
                    method2(checkbool);
                  },
                ),
                new Padding(
                  padding: new EdgeInsets.all(10.0),
                ),
                new Text(
                  'Select correct answers from below :',
                  style: new TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Radio(
                        value: 'Raised',
                        groupValue: radioValue,
                        onChanged: (String val) {
                          changeRadio(val);
                        }),
                    new Text(
                      'Raised',
                      style: new TextStyle(fontSize: 16.0),
                    ),
                    new Radio(
                        value: 'Flat',
                        groupValue: radioValue,
                        onChanged: (String val) {
                          changeRadio(val);
                        }),
                    new Text(
                      'Flat',
                      style: new TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    new Radio(
                        value: 'Checkbox',
                        groupValue: radioValue,
                        onChanged: (String val) {
                          changeRadio(val);
                        }),
                    new Text(
                      'Checkbox',
                      style: new TextStyle(fontSize: 16.0),
                    ),
                    new Radio(
                        value: 'Radio',
                        groupValue: radioValue,
                        onChanged: (String val) {
                          changeRadio(val);
                        }),
                    new Text(
                      'Radio',
                      style: new TextStyle(fontSize: 16.0),
                    ),
                    new Radio(
                        value: 'Slider',
                        groupValue: radioValue,
                        onChanged: (String val) {
                          changeRadio(val);
                        }),
                    new Text(
                      'Slider',
                      style: new TextStyle(fontSize: 16.0),
                    ),
                  ],
                ),
                new Padding(
                  padding: new EdgeInsets.all(5.0),
                ),
                new Text(
                  'Your answer is $radioValue',
                  style: new TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    fontSize: 18.0,
                  ),
                ),
                new Padding(
                  padding: new EdgeInsets.all(5.0),
                ),
                new Slider(
                    activeColor: Colors.red,
                    inactiveColor: Colors.redAccent,
                    value: dVal,
                    min: 0.0,
                    max: 10.0,
                    onChanged: (double val) {
                      moveSlider(val);
                    }),
                new Text(
                  'Slider value is $dVal',
                  style: new TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                    color: Colors.red,
                  ),
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Text(
                      "Switch :",
                      style: new TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                      ),
                    ),
                    new Switch(
                        activeColor: Colors.green,
                        inactiveThumbColor: Colors.red,
                        value: switchStatus,
                        onChanged: (bool sVal) {
                          clickSwitch(sVal);
                        }),
                  ],
                ),
              ],
            ),
          ),
          appBar: new AppBar(
            backgroundColor: Colors.blue,
            title: new Text("Widget Material Test"),
            centerTitle: true,
          ),
        ));
  }
}

//Test the Drawer
//Add Router
class ApplicationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blue,
        title: new Text("Drawer"),
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Sedki"),
              accountEmail: new Text("youzbechisedki@gmail.com"),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.black38,
                child: new Text("S."),
              ),
              decoration: new BoxDecoration(color: Colors.lightBlueAccent),
              otherAccountsPictures: <Widget>[
                new CircleAvatar(
                  backgroundColor: Colors.black38,
                  child: new Text("A."),
                ),
                new CircleAvatar(
                  backgroundColor: Colors.black38,
                  child: new Text("H."),
                ),
              ],
            ),
            new ListTile(
              title: new Text("Home"),
              //trailing: new Icon(Icons.home),
              leading: new Icon(Icons.home),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            new ListTile(
              title: new Text("Snackbar Page"),
              //trailing: new Icon(Icons.pages),
              leading: new Icon(Icons.power_input),
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) =>
                      new snackbarPage("Snackbar Page"))),
            ),
            new ListTile(
              title: new Text("Alert Dialog Page"),
              leading: new Icon(Icons.sim_card_alert),
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) =>
                      new alertDialogPage("Alert Dialog Page"))),
            ),
            new ListTile(
              title: new Text("Simple Alert Dialog Page"),
              leading: new Icon(Icons.battery_alert),
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) =>
                      new simpleAlertDialog("Simple Alert Dialog Page"))),
            ),
            new ListTile(
              title: new Text("Choices icon button"),
              leading: new Icon(Icons.touch_app),
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => new choicesAppBar())),
            ),
            new ListTile(
              title: new Text("List Tile Page"),
              leading: new Icon(Icons.list),
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => new listTilePage())),
            ),
            new ListTile(
              title: new Text("Toast Types"),
              leading: new Icon(Icons.toll),
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => new toastType())),
            ),
            new ListTile(
              title: new Text("Settings"),
              leading: new Icon(Icons.settings),
              onTap: () => (0),
            ),
          ],
        ),
      ),
    );
  }
}
