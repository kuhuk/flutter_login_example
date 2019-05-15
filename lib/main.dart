import 'package:flutter/material.dart';
import './HomeScreen.dart';

void main() => runApp(OpenNewScreen());

class OpenNewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new MaterialApp(
        title: "Flutter",
        theme: new ThemeData(
          fontFamily: "Poppins",
          primarySwatch: Colors.cyan,
        ),
        home: new HomeScreen(title: "Flutter Demo"),
      ),
    );
  }
}
