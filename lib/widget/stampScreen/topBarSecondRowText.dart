import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StampTopseconRowText extends StatelessWidget {
  const StampTopseconRowText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Mer キッチン",
            style: GoogleFonts.notoSansJp(
                fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
          ),
          Row(
            children: [
              Text(
                "現在の獲得数",
                style: GoogleFonts.notoSansJp(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Colors.white),
              ),
              Text(
                "30",
                style: GoogleFonts.notoSansJp(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text(
                "個",
                style: GoogleFonts.notoSansJp(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ],
          )
        ],
      ),
    );
  }
}
