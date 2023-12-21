import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jiitak_technical_round/getX/stampDetail.dart';
import 'package:svg_flutter/svg.dart';

class ListOfStamp extends StatelessWidget {
  const ListOfStamp({super.key});

  @override
  Widget build(BuildContext context) {
    final stampController dataController = Get.put(stampController());
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height / 2,
      child: SizedBox(
        child: ListView.builder(
          itemCount: dataController.dataList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 14, right: 14, bottom: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(dataController.dataList[index]['date'],
                              style: GoogleFonts.notoSansJp(
                                  fontSize: 12,
                                  color: Color.fromRGBO(181, 181, 181, 1),
                                  fontWeight: FontWeight.w500)),
                          Text(dataController.dataList[index]['name'],
                              style: GoogleFonts.notoSansJp(
                                  fontSize: 14, fontWeight: FontWeight.normal)),
                        ],
                      ),
                      Text(dataController.dataList[index]['value'],
                          style: GoogleFonts.notoSansJp(
                              fontSize: 14, fontWeight: FontWeight.bold))
                    ],
                  ),
                  SizedBox(height: 10),
                  SvgPicture.asset('assets/images/stampage/Vector 2.svg'),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
