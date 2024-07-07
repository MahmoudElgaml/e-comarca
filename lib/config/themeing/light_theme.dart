import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyLightTheme {
  static ThemeData myLightTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(
          color: Colors.black
        ),
      backgroundColor: Colors.white,
      elevation: 0,
      shadowColor: Colors.transparent
    ),
    textTheme: GoogleFonts.poppinsTextTheme(

    ),
  );
}
