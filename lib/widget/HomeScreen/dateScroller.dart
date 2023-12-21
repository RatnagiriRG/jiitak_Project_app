import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageDateScroller extends StatefulWidget {
  const HomePageDateScroller({super.key});

  @override
  State<HomePageDateScroller> createState() => _HomePageDateScrollerState();
}

class _HomePageDateScrollerState extends State<HomePageDateScroller> {
  int current = 1;
  @override
  Widget build(BuildContext context) {
    List<String> weekdaysInJapanese = [
      '月曜日',
      '火曜日',
      '水曜日',
      '木曜日',
      '金曜日',
      '土曜日',
      '日曜日'
    ];
    List<Map<String, dynamic>> myList = [];
    List<Map<String, dynamic>> my2List = [];

    for (int i = 1; i <= 30; i++) {
      int dayIndex = (i - 1) % 7;
      String dayOfWeek = weekdaysInJapanese[dayIndex];
      String firstLetter = dayOfWeek.substring(0, 1);
      my2List.add({'index': i, 'day': dayOfWeek});

      myList.add({'index': i, 'day': firstLetter});
    }

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Container(
        height: height / 6,
        width: width,
        child: Column(
          children: [
            Container(
              height: height / 18,
              width: width,
              child: Center(
                child: Text(
                  "2022年 5月 ${myList[current]['index'].toString()}日（ ${myList[current]['day']}）",
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromRGBO(250, 170, 20, 1),
                  Color.fromRGBO(255, 215, 141, 1)
                ]),
              ),
            ),
            SingleChildScrollView(
              child: SizedBox(
                height: height / 10,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: myList.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          current = index;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                            top: 6, bottom: 6, left: 6, right: 6),
                        width: width / 8,
                        height: height / 8,
                        decoration: BoxDecoration(
                            color: current == index
                                ? Colors.amber
                                : Color.fromRGBO(238, 238, 238, 1),
                            borderRadius: BorderRadius.circular(10)),
                        child: height <= width
                            ? Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(
                                    
                                  ),
                                  Text(
                                    
                                    my2List[index]['day'],
                                    style: GoogleFonts.notoSansJp(
                                      fontSize: height / 50,
                                      fontWeight: FontWeight.bold,
                                      color: current == index
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                  Text(
                                    myList[index]['index'].toString(),
                                    style: GoogleFonts.notoSansJp(
                                      fontSize: height / 50,
                                      fontWeight: FontWeight.bold,
                                      color: current == index
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                ],
                              )
                            : Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Text(
                                      myList[index]['day'],
                                      style: GoogleFonts.notoSansJp(
                                        fontSize: height / 50,
                                        fontWeight: FontWeight.bold,
                                        color: current == index
                                            ? Colors.white
                                            : Colors.black,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      myList[index]['index'].toString(),
                                      style: GoogleFonts.notoSansJp(
                                        fontSize: height / 50,
                                        fontWeight: FontWeight.bold,
                                        color: current == index
                                            ? Colors.white
                                            : Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
