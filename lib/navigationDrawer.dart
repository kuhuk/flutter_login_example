import 'package:flutter/material.dart';
import './drawerScreens/FirstDrawerScreen.dart';
import 'DrawerItem.dart';

class NavigationDrawer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new NavigationDrawerState();
  }
}

class NavigationDrawerState extends State<NavigationDrawer> {
  int selectedIndex = 0;

  final drawerItems = [
    new DrawerItem(Icons.notifications, "Notification"),
    new DrawerItem(Icons.transfer_within_a_station, "My Visits"),
    new DrawerItem(Icons.shopping_cart, "My Bookings"),
    new DrawerItem(Icons.payment, "Payments"),
    new DrawerItem(Icons.favorite, "Favorites"),
    new DrawerItem(Icons.question_answer, "FAQ"),
    new DrawerItem(Icons.info, "About")
  ];

  getDrawerItemScreen(int pos) {
    return new FirstDrawerScreen(drawerItem: drawerItems[selectedIndex]);
  }

  onSelectedItem(int index) {
    setState(() {
      selectedIndex = index;
      getDrawerItemScreen(selectedIndex);
    });

    Navigator.of(context).pop(); //close the drawer
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> drawerOptions = [];

    for(var i = 0; i < drawerItems.length; i++) {
      var d = drawerItems[i];

      drawerOptions.add(new ListTile(
        leading: new Icon(d.icon),
        title: new Text(
          d.title,
          style: new TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400),
        ),
        selected: i == selectedIndex,
        onTap: () => onSelectedItem(i),
      ));
    }

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Navigation Drawer"),
      ),
      drawer: new Drawer(
        child: new Column(
          children: <Widget>[
            new UserAccountsDrawerHeader(
                accountName: new Text("Kuhuk Sharma",
                style: new TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500),
                ),
                accountEmail: new Text("kuhuk.india97@gmail.com",
                style: new TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500),
                )),
            new Column(children: drawerOptions)
          ],
        ),
      ),
      body: getDrawerItemScreen(selectedIndex),
    );
  }
}