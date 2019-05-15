import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:open_new_screen/DrawerItem.dart';

class FirstDrawerScreen extends StatefulWidget {
  final DrawerItem drawerItem;

  FirstDrawerScreen({Key key, @required this. drawerItem}) : super(key:key);

  @override
  FirstScreenState createState() {
    return new FirstScreenState();
  }
}

class FirstScreenState extends State<FirstDrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Icon(
            widget.drawerItem.icon,
            size: 54.0,
          ),
          new Text(
            widget.drawerItem.title,
            style: TextStyle(fontSize: 48.0, fontWeight: FontWeight.w300),
          )
        ],
      ),
    );
  }
}