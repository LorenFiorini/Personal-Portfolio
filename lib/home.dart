import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personal_portfolio/colors.dart';
import 'package:personal_portfolio/texts.dart';
import 'package:personal_portfolio/appBar.dart';
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
      appBar: BaseAppBar(
        appBar: AppBar(),
      ),
      backgroundColor: paperLight,
      body: Column(
        children: <Widget>[
          Flexible(
            fit: FlexFit.tight,
            child: ListView(
              padding: EdgeInsets.fromLTRB(
                screenWidth / 10,
                screenWidth / 10 * (5 / 8),
                screenWidth / 10,
                screenWidth / 10 * (5 / 8),
              ),
              children: <Widget>[
                IntrinsicHeight(
                  child: Container(
                    decoration: BoxDecoration(
                      color: primaryPaper,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(35),
                      boxShadow: [
                        BoxShadow(
                          color: paperDark,
                          blurRadius: 2.0,
                          spreadRadius: 1.0,
                          offset: Offset(
                              1.5, 2.4), // shadow direction: bottom right
                        )
                      ],
                    ),
                    //height: MediaQuery.of(context).size.height,

                    child: Row(
                      children: <Widget>[
                        Flexible(
                          flex: 100,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(
                              screenWidth / 10 * pow(5 / 8, 2),
                              screenWidth / 10 * pow(5 / 8, 3),
                              screenWidth / 10 * pow(5 / 8, 3),
                              screenWidth / 10 * pow(5 / 8, 2),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            alignment: Alignment.topCenter,
                            child: Text(
                              myDescription,
                              style: GoogleFonts.caveat(
                                height: 1.6,
                                letterSpacing: 5 / 8,
                                wordSpacing: 1,
                                fontWeight: FontWeight.w600,
                                fontSize: 20 + screenWidth / 230,
                              ),
                            ),
                          ),
                        ),
                        VerticalDivider(
                          indent: screenWidth / 10 * pow(5 / 8, 2),
                          endIndent: screenWidth / 10 * pow(5 / 8, 2),
                          thickness: 8 / 5,
                          color: paperDark,
                        ),
                        Flexible(
                          flex: 61,
                          child: Container(
                            padding: EdgeInsets.all(
                                screenWidth / 10 * pow(5 / 8, 2)),
                            alignment: Alignment.center,
                            child: Image.asset(
                                'assets/images/people_007-blk-w.png'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(screenWidth / 10 * (5 / 8)),
                  child: Text(
                    'Projects',
                    style: GoogleFonts.merienda(
                      height: 1.6,
                      letterSpacing: 5 / 8,
                      fontWeight: FontWeight.w600,
                      fontSize: 20 + screenWidth / 230,
                    ),
                  ),
                ),
                IntrinsicHeight(
                  child: Container(
                    width : screenWidth * 3/4,
                    child: Column(
                      children: <Widget>[
                        Row(
                          // project
                          children: <Widget>[
                            Flexible(
                              flex: 8,
                              child: Column(
                                children: [
                                  // Title
                                  Row(
                                    children: <Widget>[
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: Text('Shrine'),
                                      ),
                                      // TODO: Add hyperlink
                                    ],
                                  ),
                                  // TODO: Description
                                  Text(
                                      'Google Fonts is a font embedding service library. This includes free and open source font families, an interactive web directory for browsing the library, and APIs for using the fonts via CSS and Android.'),
                                ],
                              ),
                            ),
                            // TODO: Add Pictures
                            Flexible(
                              flex: 5,
                              child: Image.asset(
                                  'assets/images/people_007-blk-w.png'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                /*
                Container(
                  child: Center(child: Text('Entry B')),
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
                ),*/
              ],
            ),
          ),
        ],
      ),
    );
  }
}
