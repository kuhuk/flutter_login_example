import 'package:flutter/material.dart';
import './otherScreens/buttonDemo.dart';
import './otherScreens/formDemo.dart';
import './navigationDrawer.dart';

class HomeScreen extends StatefulWidget {
  final String title;

  HomeScreen({Key key, this.title}) : super(key : key);

  @override
  HomeScreenState createState() => new HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  void switchView(StatefulWidget statefulWidget) {
    Navigator.push(context, new MaterialPageRoute(builder: (context) {
      return statefulWidget;
    }));
  }

  ListTile renderViews(String title, StatefulWidget statefulWidget) {
    return new ListTile(
      onTap: () {
        switchView(statefulWidget);
      },
      title: new Text(title,
      style: new TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 20.0
      )),
      leading: new Icon(
        Icons.arrow_forward,
        color: Colors.green,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title)
      ),
      body: new ListView(
        children: <Widget>[
          renderViews("Button", new ButtonDemo()),
          renderViews("Form", new FormDemo()),
          renderViews("Form", new FormDemo()),
          renderViews("Form", new FormDemo()),
          renderViews("Navigation Drawer", new NavigationDrawer())
        ]
      )
    );
  }
}