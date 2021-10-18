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
      backgroundColor: Color(0xFF84FFFF),
      body: Center(
          child: ListView(
            padding: const EdgeInsets.all(16),
            children: <Widget>[
              Container(
                height: 500,
                decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const Center(child: Text('Entry A')),
              ),

              const SizedBox(
                height: 20,
              ),

              Container(
                height: 500,
                decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const Center(child: Text('Entry B')),
              ),

              const SizedBox(
                height: 20,
              ),

              Container(
                height: 500,
                decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(50),
                ),
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


