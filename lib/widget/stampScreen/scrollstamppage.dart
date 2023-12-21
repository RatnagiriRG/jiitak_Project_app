import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:svg_flutter/svg.dart';

class ScrollStampPage extends StatefulWidget {
  const ScrollStampPage({super.key});

  @override
  State<ScrollStampPage> createState() => _ScrollStampPageState();
}

class _ScrollStampPageState extends State<ScrollStampPage> {
  int current = 1;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 3, right: 3),
      child: Column(
        children: [
          SizedBox(
            height: height / 50,
            width: width,
          ),
          SizedBox(
            height: height / 4,
            child: height <= width
                ? ListView.builder(
                   
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 20,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            current = index;
                          });
                        },
                        child: SvgPicture.asset(
                          "assets/images/stampage/Group 243258picture.svg",
                        ),
                      );
                    },
                  )
                : PageView.builder(
                    onPageChanged: (value) {
                      setState(() {
                        current = value;
                      });
                    },
                    physics: ClampingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 20,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            current = index;
                          });
                        },
                        child: SvgPicture.asset(
                          "assets/images/stampage/Group 243258picture.svg",
                        ),
                      );
                    },
                  ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "${current + 1} / 20枚目",
                  style: GoogleFonts.notoSansJp(
                      fontSize: 12, fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
