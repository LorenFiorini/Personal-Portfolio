import 'package:flutter/material.dart';
import 'package:personal_portfolio/colors.dart';
import 'package:personal_portfolio/texts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
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
          //'Lorenzo Fiorini',
          screenWidth.toString(),

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
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        actions: <Widget>[
          IconButton(
            onPressed: _launchURL('https://github.com/LorenFiorini'),//() {},
            icon: FaIcon(
              FontAwesomeIcons.githubSquare,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: FaIcon(
              FontAwesomeIcons.linkedin,
              color: Colors.black,
            ),
          ),
        ],
        elevation: 5,
        backgroundColor: paperDark,
        shadowColor: Colors.brown,
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
                            padding: EdgeInsets.fromLTRB(
                              screenWidth / 10 * pow(5 / 8, 2),
                              screenWidth / 10 * pow(5 / 8, 3),
                              screenWidth / 10 * pow(5 / 8, 3),
                              screenWidth / 10 * pow(5 / 8, 2),
                            ),
                            alignment: Alignment.center,
                            child: Image.asset(
                                'assets/images/people_007-blk-w.png'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: screenWidth / 10 * (5 / 8),
                ), /*
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
                ),*/
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void _launchURL(_url) async {
  await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';
}
