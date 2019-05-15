import 'package:flutter/material.dart';

class FormDemo extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return new FormDemoState();
  }
}

class FormDemoState extends State<FormDemo> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Forms"),
        actions: <Widget>[
          new IconButton(icon: const Icon(Icons.save), onPressed: () {})
        ],
      ),
      body: new Column(
        children: <Widget>[
          new ListTile(
            leading: const Icon(Icons.phone),
            title: new TextField(
              decoration: new InputDecoration(
                hintText: "Phone",
                contentPadding: const EdgeInsets.all(15.0)
              ),
              keyboardType: TextInputType.phone,
              maxLength: 10,
            ),
          ),
          new ListTile(
            leading: const Icon(Icons.email),
            title: new TextField(
              decoration: new InputDecoration(
                hintText: "Email",
                contentPadding: const EdgeInsets.all(15.0)
              ),
              keyboardType: TextInputType.emailAddress,
            )
          )
        ]
      )
    );
  }
}