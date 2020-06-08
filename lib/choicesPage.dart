import 'package:flutter/material.dart';
import 'package:flutterapp/utils.dart';

void main() {
  runApp(new choicesAppBar());
}

class choicesAppBar extends StatefulWidget {
  @override
  _ChoicesAppBarState createState() => _ChoicesAppBarState();
}

class _ChoicesAppBarState extends State<choicesAppBar> {
  Choice _selectedChoice = choices[0]; // The app's "state".

  void _select(Choice choice) {
    // Causes the app to rebuild with the new _selectedChoice.
    setState(() {
      _selectedChoice = choice;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Choices Appbar'),
        actions: <Widget>[
          // action button
          IconButton(
            icon: Icon(choices[0].icon),
            onPressed: () {
              _select(choices[0]);
            },
          ),
          // action button
          IconButton(
            icon: Icon(choices[1].icon),
            onPressed: () {
              _select(choices[1]);
            },
          ),
          // overflow menu
          PopupMenuButton<Choice>(
            onSelected: _select,
            itemBuilder: (BuildContext context) {
              return choices.skip(2).map((Choice choice) {
                return PopupMenuItem<Choice>(
                    value: choice,
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            choice.icon,
                            color: colorBlueShade400,
                          ),
                        ),
                        Text(choice.title,
                            style: TextStyle(
                              color: colorBlueShade400,
                              fontWeight: FontWeight.bold,
                            )),
                      ],
                    ));
              }).toList();
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ChoiceCard(choice: _selectedChoice),
      ),
    );
  }
}

class Choice {
  const Choice({this.title, this.icon});

  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'Walk', icon: Icons.directions_walk),
  const Choice(title: 'Bicycle', icon: Icons.directions_bike),
  const Choice(title: 'Bus', icon: Icons.directions_bus),
  const Choice(title: 'Train', icon: Icons.directions_railway),
  const Choice(title: 'Car', icon: Icons.directions_car),
  const Choice(title: 'Boat', icon: Icons.directions_boat),
];

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({Key key, this.choice}) : super(key: key);

  final Choice choice;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.headline4;
    return Card(
      child: Center(
        child: Container(
          //height: double.infinity,
          //width: double.infinity,
          //to align the context
          alignment: Alignment(0, 0),
          decoration: BoxDecoration(
            gradient: RadialGradient(
              colors: [
                Colors.green,
                Colors.lightGreenAccent,
                Colors.blueAccent,
                Colors.orangeAccent,
                Colors.yellow
              ],
              stops: [0.2, 0.5, 0.7, 0.9, 1],
              //to put the gradiant not in the center
              //center: Alignment(0.1, 0.2),
            ),
          ),
          child: GestureDetector(
            onDoubleTap: () {
              Scaffold.of(context).showSnackBar(new SnackBar(
                content: Text("It's clicked double.."),
                duration: Duration(seconds: 2),
              ));
              print('double tap');
            },
            child: Column(
              //put in the center
              mainAxisSize: MainAxisSize.min,
              //Wrap_content ,Match_parent
              //mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(
                  choice.icon,
                  size: 128.0,
                  color: textStyle.color,
                ),
                Text(choice.title, style: textStyle),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/*


return Card(
      //color: Colors.green,
      child: Center(
        child: Container(
          decoration: BoxDecoration(
              gradient: RadialGradient(
                colors: [
                  Colors.green,
                  Colors.lightGreenAccent,
                  Colors.blueAccent,
                  Colors.orangeAccent,
                  Colors.yellow
                ],
                //stops: [0.2, 0.5, 0.7, 1],
                center: Alignment(0.1, 0.3),
              ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(choice.icon, size: 128.0, color: textStyle.color),
              Text(choice.title, style: textStyle),
            ],
          ),
        ),
      ),
    );



 */

///
///
/*
child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(choice.icon, size: 128.0, color: textStyle.color),
            Text(choice.title, style: textStyle),
          ],
        ),
 */

/*
Container(
decoration: BoxDecoration(
gradient: RadialGradient(
colors: [
Colors.green,
Colors.lightGreenAccent,
Colors.blueAccent,
Colors.orangeAccent,
Colors.yellow
],
stops: [0.2, 0.5, 0.7, 1],
center: Alignment(0.1, 0.3),
)),
),*/
