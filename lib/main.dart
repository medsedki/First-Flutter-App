import 'package:flutter/material.dart';

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
  runApp(new MaterialApp(home: new ApplicationStack()));
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
