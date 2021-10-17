import 'package:flutter/material.dart';
import 'package:personal_portfolio/colors.dart';


class Home extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lorenzo Fiorini'),

      ),
      body: Center(
          child: ListView(
            padding: const EdgeInsets.all(8),
            children: <Widget>[
              Container(
                height: 500,
                color: secondaryColor, //Colors.amber[600],
                child: const Center(child: Text('Entry A')),
              ),
              Container(
                height: 500,
                color: secondaryColor, //Colors.amber[500],
                child: const Center(child: Text('Entry B')),
              ),
              Container(
                height: 500,
                color: secondaryColor, //Colors.amber[100],
                child: const Center(child: Text('Entry C')),
              ),
            ],
          )
        /*
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
          ],
        ),*/
      ),
    );
  }
}


