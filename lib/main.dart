import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_shine/Constraints/color_constriants.dart';
import 'package:portfolio_shine/ScreenPages/screen.dart';

import 'ScreenPages/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: GoogleFonts.frankRuhlLibreTextTheme(),
        primaryColor:  primarycolor,
        scaffoldBackgroundColor: bgColor,
        canvasColor: bgColor,
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
