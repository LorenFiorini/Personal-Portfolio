import 'package:flutter/material.dart';
import 'colors.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lorenzo',
      theme: _PortfolioTheme,



      home: Home(),
    );
  }
}


final ThemeData _PortfolioTheme = _buildPortfolioTheme();

ThemeData _buildPortfolioTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    colorScheme: base.colorScheme.copyWith(
      primary: primaryColor,
      secondary: secondaryColorDark,
    ),

    scaffoldBackgroundColor: Colors.white,

  );
}
