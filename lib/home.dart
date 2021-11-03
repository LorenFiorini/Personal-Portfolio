//import 'dart:html';

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
            padding:  EdgeInsets.fromLTRB(screenWidth/10, screenWidth/20, screenWidth/10, screenWidth/5),
            children: <Widget>[

              Container(
                height: 700,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: primaryPaper,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(35),
                ),
                child: Row(
                  children: <Widget>[

                    Flexible(
                      flex: 10,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: primaryPaper,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                            myDescription,
                            style: GoogleFonts.lato(
                              fontSize: 18,
                            ),
                        ),
                      ),
                    ),

                    Flexible(
                      flex: 6,
                      child: Container(
                        alignment: Alignment.center,
                        child: Image.asset('assets/images/people_007-blk.png'),
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


