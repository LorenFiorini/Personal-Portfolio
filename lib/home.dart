import 'package:flutter/material.dart';
import 'package:personal_portfolio/colors.dart';


class Home extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

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
                //width: screenWidth * (0.7),
                height: 500,
                decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Row(
                  //padding: const EdgeInsets.all(8),
                  children: <Widget>[
                    Flexible(
                      flex: 2,
                      child: Container(
                        alignment: Alignment.center,
                        child: Text('My description is going to be here.'),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        alignment: Alignment.center,
                        child: Image.asset('assets/images/people_007-blk.png'),//Text('PICTURE'),
                      ),
                    ),
                  ],
                ),
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


