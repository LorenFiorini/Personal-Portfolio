import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_portfolio/colors.dart';


class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  //final Color backgroundColor = Colors.red;
  //final Text title;
  final AppBar appBar;
  //final List<Widget> widgets;

  /// you can add more fields that meet your needs

  const BaseAppBar({Key? key, required this.appBar})//, this.title, this.appBar, this.widgets})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    //double screenWidth = MediaQuery.of(context).size.width;

    return AppBar(
      shape: RoundedRectangleBorder(),
      centerTitle: true,
      title: SelectableText(
        'Lorenzo Fiorini',
        //screenWidth.toString(),
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
          padding: EdgeInsets.all(2),
          onPressed: _launchGithub,
          icon: FaIcon(
            FontAwesomeIcons.githubSquare,
            color: Colors.black,
            semanticLabel: 'Open GitHub',
          ),
        ),
        IconButton(
          padding: EdgeInsets.all(2),
          onPressed: _launchLinkedin,
          icon: FaIcon(
            FontAwesomeIcons.linkedin,
            color: Colors.black,
            semanticLabel: 'Open LinkedIn',
          ),
        ),
        SizedBox(
          width: 5,
        ),
      ],
      elevation: 5,
      backgroundColor: paperDark,
      shadowColor: Colors.brown,
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);
}

const _Github = 'https://github.com/LorenFiorini';
const _Linkedin = 'https://www.linkedin.com/in/lorenfiorini/';

void _launchGithub() async {
  await canLaunch(_Github) ? await launch(_Github) : throw 'Could not launch $_Github';
}
void _launchLinkedin() async {
  await canLaunch(_Linkedin) ? await launch(_Linkedin) : throw 'Could not launch $_Linkedin';
}
