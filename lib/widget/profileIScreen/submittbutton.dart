import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SubmittButtonprofile extends StatelessWidget {
  const SubmittButtonprofile({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Text(
          "編集を保存",
          style: GoogleFonts.notoSansJp(
              fontSize: 14, fontWeight: FontWeight.w800, color: Colors.white),
        ));
  }
}
