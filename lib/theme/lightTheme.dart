import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    textTheme: TextTheme(
      bodyLarge:
          GoogleFonts.notoSansJp(fontSize: 17, fontWeight: FontWeight.bold),
      bodyMedium:
          GoogleFonts.notoSansJp(fontSize: 14, fontWeight: FontWeight.w500),
      labelSmall:
          GoogleFonts.notoSansJp(fontSize: 12, fontWeight: FontWeight.w400),
    ),
    colorScheme: ColorScheme.light(background: Colors.white));
