//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:personal_portfolio/colors.dart';
import 'package:personal_portfolio/texts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';

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
        shape: RoundedRectangleBorder(),
        centerTitle: true,
        title: Text(
          'Lorenzo Fiorini',
          style: GoogleFonts.merienda(
            textStyle: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w600,
              letterSpacing: 1.2,
              wordSpacing: 2.5,
              color: Colors.black,
            ),
          ),
        ),
        elevation: 5,
        backgroundColor: paperDark,
        shadowColor: Colors.brown,
      ),

      backgroundColor: paperLight, //Color(0xFF84FFFF),

      body: Center(
          child: ListView(
            padding:  EdgeInsets.fromLTRB(
                screenWidth / 10,
                screenWidth / 10 * (5 / 8),
                screenWidth / 10,
                screenWidth / 10 * (5 / 8),
            ),
            children: <Widget>[

              Container(
                height: screenWidth * 0.5 * (5 / 8),
                decoration: BoxDecoration(
                  color: primaryPaper,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(35),
                  boxShadow: [
                    BoxShadow(
                      color: paperDark,
                      blurRadius: 2.0,
                      spreadRadius: 1.0,
                      offset: Offset(1.5, 2.4), // shadow direction: bottom right
                    )
                  ],
                ),
                child: Row(
                  children: <Widget>[

                    Flexible(
                      flex: 100,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(
                          screenWidth / 10 * (5 / 8),
                          screenWidth / 10 * pow(5 / 8, 2),
                          screenWidth / 10 * (5 / 8),
                          screenWidth / 10 * pow(5 / 8, 2),
                        ),
                        decoration: BoxDecoration(
                          //color: Colors.red,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        alignment: Alignment.topCenter,
                        child: Text(
                            myDescription,
                            style: GoogleFonts.caveat(
                              fontWeight: FontWeight.w600,
                              fontSize: 28,
                            ),
                        ),
                      ),
                    ),

                    VerticalDivider(
                      indent: (MediaQuery.of(context).size.height) * 0.1,
                      endIndent: (MediaQuery.of(context).size.height) * 0.1,
                      thickness: 8/5,
                      color: paperDark,
                    ),

                    Flexible(
                      flex: 61,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(
                          screenWidth / 10 * pow(5 / 8, 2),
                          screenWidth / 10 * pow(5 / 8, 3),
                          screenWidth / 10 * pow(5 / 8, 3),
                          screenWidth / 10 * pow(5 / 8, 2),
                        ),
                        alignment: Alignment.center,
                        child: Image.asset('assets/images/people_007-blk-w.png'),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: screenWidth / 10 * (5 / 8),
              ),

              Container(
                height: 500,
                decoration: BoxDecoration(
                  color: primaryPaper,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const Center(child: Text('Entry B')),
              ),

              SizedBox(
                height: screenWidth / 10 * (5 / 8),
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


