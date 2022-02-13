//import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personal_portfolio/third/colors.dart';
import 'package:personal_portfolio/third/texts.dart';
import 'package:personal_portfolio/appBar.dart';
import 'package:personal_portfolio/navigation.dart';
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
    double tenth = screenWidth / 10;
    double tenth_1 = screenWidth / 10 * (5 / 8);
    double tenth_2 = screenWidth / 10 * pow(5 / 8, 2);
    double tenth_3 = screenWidth / 10 * pow(5 / 8, 3);

    return Scaffold(
      appBar: BaseAppBar(
        appBar: AppBar(),
      ),
      drawer: const NavigationDrawerWidget(),
      backgroundColor: paperLight,
      body: Column(
        children: <Widget>[
          Flexible(
            fit: FlexFit.tight,
            child: ListView(
              padding: EdgeInsets.fromLTRB(
                tenth,
                tenth_1,
                tenth,
                tenth_1,
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
                              tenth_2,
                              tenth_3,
                              tenth_3,
                              tenth_2,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            alignment: Alignment.topCenter,
                            child: SelectableText(
                              myDescription,
                              style: GoogleFonts.kalam( //caveat(
                                height: 1.6,
                                //letterSpacing: 5 / 8,
                                //wordSpacing: 1,
                                fontWeight: FontWeight.w600,
                                fontSize: 18 + screenWidth / 250,
                              ),
                            ),
                          ),
                        ),
                        VerticalDivider(
                          indent: tenth_2,
                          endIndent: tenth_2,
                          thickness: 8 / 5,
                          color: paperDark,
                        ),
                        Flexible(
                          flex: 61,
                          child: Container(
                            padding: EdgeInsets.all(tenth_2),
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
                  padding: EdgeInsets.only(top: tenth_2),
                  child: Align(
                    alignment: Alignment.center,
                    child: SelectableText(
                      'Projects',
                      style: GoogleFonts.merienda(
                        height: 1.6,
                        letterSpacing: 5 / 8,
                        fontWeight: FontWeight.w600,
                        fontSize: 20 + screenWidth / 230,
                      ),
                    ),
                  ),
                ),

                Container(
                  padding: EdgeInsets.all(tenth_1),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        // project
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        //crossAxisAlignment: CrossAxisAlignment.,
                        children: <Widget>[
                          Flexible(
                            flex: 8,
                            child: Container(
                              padding: EdgeInsets.all(tenth_2),
                              decoration: BoxDecoration(
                                color: Colors.red,
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Text('Shrine'),

                                  // TODO: Add hyperlink

                                  // TODO: Description
                                  Text(projectText),
                                ],
                              ),
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

              ],
            ),
          ),
        ],
      ),
    );
  }
}
