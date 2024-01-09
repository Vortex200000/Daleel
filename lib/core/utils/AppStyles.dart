import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyles {
  static ThemeData themeData = ThemeData(
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.poppins(
          color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
      bodyMedium: GoogleFonts.poppins(
          color: Colors.black, fontSize: 16, ),
      bodySmall: GoogleFonts.poppins(
          color: Colors.black, fontSize: 10, fontWeight: FontWeight.w300),
    ),
  );
}
