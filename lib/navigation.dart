import 'package:flutter/material.dart';

import 'package:personal_portfolio/pages/home.dart';
import 'package:personal_portfolio/appBar.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = const EdgeInsets.symmetric(horizontal: 20);
  final color = Colors.black;
  final hoverColor = Colors.white70;

  const NavigationDrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.black,
        child: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.all(24),
                //const EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 24.0),
                decoration: const BoxDecoration(
                  color: Colors.brown,
                ),
                child: Image.asset(""),
              ),
              ListTile(
                leading: Icon(Icons.home, color: color),
                title: Text("Home", style: TextStyle(color: color)),
                hoverColor: hoverColor,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                  //Navigator.pop(context);
                },
              ),
              const SizedBox(height: 24),
              const Divider(color: Colors.black54),
              const SizedBox(height: 24),
              ListTile(
                leading: Icon(Icons.keyboard, color: color),
                title: Text('Projects', style: TextStyle(color: color)),
                hoverColor: hoverColor,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                  //Navigator.pop(context);
                },
              ),
              const SizedBox(height: 16),
              ListTile(
                leading: Icon(Icons.local_hospital, color: color),
                title: Text('Statistics', style: TextStyle(color: color)),
                hoverColor: hoverColor,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                  //Navigator.pop(context);
                },
              ),
            ],
          ),
        ));
  }
}
