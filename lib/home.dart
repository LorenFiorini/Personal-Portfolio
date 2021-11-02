import 'dart:html';

import 'package:flutter/material.dart';
import 'package:personal_portfolio/colors.dart';
import 'package:personal_portfolio/texts.dart';
import 'package:google_fonts/google_fonts.dart';


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
        centerTitle: true,
        title: Text(
          'Lorenzo Fiorini',
          style: GoogleFonts.merriweather(
            textStyle: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        backgroundColor: paperDark,
      ),
      backgroundColor: paperLight, //Color(0xFF84FFFF),
      body: Center(
          child: ListView(
            padding: const EdgeInsets.all(50),
            children: <Widget>[
              Container(
                //width: screenWidth * (0.7),
                height: 500,
                decoration: BoxDecoration(
                  color: primaryPaper,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Row(
                  //padding: const EdgeInsets.all(8),
                  children: <Widget>[
                    Flexible(
                      flex: 3,
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(myDescription),
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Container(
                        alignment: Alignment.center,
                        child: Image.asset('assets/images/people_007-blk.png'),//Text('PICTURE'),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 50,
              ),

              Container(
                height: 500,
                decoration: BoxDecoration(
                  color: primaryPaper,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const Center(child: Text('Entry B')),
              ),

              const SizedBox(
                height: 50,
              ),

              Container(
                height: 500,
                decoration: BoxDecoration(
                  color: primaryPaper,
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


