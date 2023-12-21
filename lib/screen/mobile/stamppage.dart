import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jiitak_technical_round/getX/postDetailsprovider.dart';
import 'package:jiitak_technical_round/getX/stampDetail.dart';
import 'package:jiitak_technical_round/screen/mobile/Mobile_homePage.dart';
import 'package:jiitak_technical_round/screen/mobile/mainpage.dart';
import 'package:jiitak_technical_round/widget/stampScreen/backbutton.dart';
import 'package:jiitak_technical_round/widget/stampScreen/listOfStamp.dart';
import 'package:jiitak_technical_round/widget/stampScreen/minusCircle.dart';
import 'package:jiitak_technical_round/widget/stampScreen/scrollstamppage.dart';
import 'package:jiitak_technical_round/widget/stampScreen/topBarSecondRowText.dart';
import 'package:svg_flutter/svg.dart';

class mobileStampPage extends StatelessWidget {
  const mobileStampPage({super.key});

  @override
  Widget build(BuildContext context) {
  
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SingleChildScrollView(
      child: SizedBox(
        height: height,
        child: Stack(
          children: [
            Container(
              color: Color.fromRGBO(148, 196, 255, 1),
              height: height / 3,
              child: SafeArea(
                child: Column(
                  children: [
                    SizedBox(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        stampBack(),
                        Text(
                          "スタンプカード詳細",
                          style: GoogleFonts.notoSansJp(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                          textAlign: TextAlign.center,
                        ),
                        StampminusCircle(),
                      ],
                    ),
                    StampTopseconRowText(),
                  ],
                ),
              ),
            ),
            Positioned(
                top: height / 4,
                child: Container(
                    width: width,
                    height: height,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color:height<=width?Colors.blueGrey: const Color.fromARGB(255, 255, 255, 255),
                    ),
                    child: Column(
                      children: [
                        ScrollStampPage(),
                        
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              child: Text("スタンプ獲得履歴",
                                  style: GoogleFonts.notoSansJp(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SingleChildScrollView(
                          child: ListOfStamp(),
                        )
                      ],
                    ))),
          ],
        ),
      ),
    ));
  }
}
