import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WorkPage extends StatelessWidget {
  const WorkPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: height ,
          child: Stack(
            children: [
              Container(
                color: Color.fromARGB(255, 83, 185, 124),
                height: height / 3,
                width: width,
                child: Center(
                    child: Text(
                  "作業セクションは建設中です",
                  style: GoogleFonts.notoSansJp(
                      fontSize: 14,
                      fontWeight: FontWeight.w900,
                      color: Colors.white),
                )),
              ),
              Positioned(
                  top: height / 4,
                  child: Container(
                    height: height/2,
                    width: width,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(child: Image.asset("assets/images/community/construction.gif")),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}