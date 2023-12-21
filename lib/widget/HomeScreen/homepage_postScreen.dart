import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jiitak_technical_round/getX/postDetailsprovider.dart';
import 'package:svg_flutter/svg.dart';

class homePagePost extends StatefulWidget {
  const homePagePost({super.key});

  @override
  State<homePagePost> createState() => _homePagePostState();
}

bool setc = false;

class _homePagePostState extends State<homePagePost> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    print(height);
    print(width);

    final DataController dataController = Get.put(DataController());

    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 10,
          ),
          SingleChildScrollView(
            child: SizedBox(
              width: double.infinity,
              height: height,
              child: width <= 340
                  ? Container(
                      child: Center(
                        child: Text("device Resolution doesnt support"),
                      ),
                    )
                  : height <= width
                      ? ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: dataController.dataList.length,
                          itemBuilder: (context, index) {
                            return SingleChildScrollView(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    width: 340,
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          child: Stack(
                                            children: [
                                              Column(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 10, right: 10),
                                                    child: Image.asset(
                                                      '${dataController.dataList[index]['imagePath']}',
                                                      width: 305,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Positioned(
                                                  top: 130,
                                                  child: SvgPicture.asset(
                                                      "assets/images/HomePagePost/Group 243251.svg"))
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 17, right: 17),
                                          child: Container(
                                            decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                    bottomRight:
                                                        Radius.circular(10),
                                                    bottomLeft:
                                                        Radius.circular(10)),
                                                boxShadow: [
                                                  BoxShadow(
                                                      blurStyle: BlurStyle.outer,
                                                      blurRadius: 39,
                                                      spreadRadius: 0,
                                                      color: Color.fromARGB(
                                                          255, 160, 159, 159))
                                                ]),
                                            // width: double.infinity,
                                            child: Padding(
                                              padding: const EdgeInsets.all(14),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    dataController.dataList[index]
                                                        ['title'],
                                                    style: GoogleFonts.notoSansJp(
                                                        fontSize: 13,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Container(
                                                        decoration: BoxDecoration(
                                                            color: Color.fromARGB(
                                                                255,
                                                                236,
                                                                234,
                                                                234),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10)),
                                                        height: 26,
                                                        width: 130,
                                                        child: Center(
                                                          child: Text(
                                                            dataController
                                                                        .dataList[
                                                                    index]
                                                                ['subtitle'],
                                                            style: GoogleFonts
                                                                .notoSansJp(
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            214,
                                                                            162,
                                                                            4),
                                                                    fontSize: 10),
                                                          ),
                                                        ),
                                                      ),
                                                      Text(
                                                        dataController
                                                                .dataList[index]
                                                            ['money'],
                                                        style: GoogleFonts
                                                            .notoSansJp(
                                                                fontSize: 16,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                      )
                                                    ],
                                                  ),
                                                  Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.start,
                                                    children: [
                                                      SizedBox(height: 10),
                                                      Text(
                                                        dataController
                                                                .dataList[index]
                                                            ['time'],
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .labelSmall,
                                                      ),
                                                      SizedBox(height: 10),
                                                      Text(
                                                        dataController
                                                                .dataList[index]
                                                            ['label'],
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .labelSmall,
                                                      ),
                                                      SizedBox(height: 10),
                                                      Text(
                                                        dataController
                                                                .dataList[index]
                                                            ['moneySpend'],
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .labelSmall,
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                              dataController
                                                                          .dataList[
                                                                      index][
                                                                  'favoritelabel'],
                                                              style: GoogleFonts
                                                                  .notoSansJp(
                                                                      color: Color
                                                                          .fromARGB(
                                                                              255,
                                                                              151,
                                                                              149,
                                                                              143),
                                                                      fontSize:
                                                                          12)),
                                                          IconButton(
                                                              onPressed: () {
                                                                setState(() {
                                                                  if (setc ==
                                                                      false) {
                                                                    setc == true;
                                                                  } else if (setc ==
                                                                      true) {
                                                                    setc == false;
                                                                  }
                                                                });
                                                              },
                                                              icon: SvgPicture
                                                                  .asset(
                                                                'assets/images/HomePagePost/Group 243252.svg',
                                                                color: setc ==
                                                                        true
                                                                    ? Colors.red
                                                                    : Colors.grey,
                                                              ))
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        )
                      : ListView.builder(
                          itemCount: dataController.dataList.length,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  width: 340,
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        child: Stack(
                                          children: [
                                            Column(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10, right: 10),
                                                  child: Image.asset(
                                                    '${dataController.dataList[index]['imagePath']}',
                                                    width: 305,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Positioned(
                                                top: 130,
                                                child: SvgPicture.asset(
                                                    "assets/images/HomePagePost/Group 243251.svg"))
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 17, right: 17),
                                        child: Container(
                                          decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  bottomRight:
                                                      Radius.circular(10),
                                                  bottomLeft:
                                                      Radius.circular(10)),
                                              boxShadow: [
                                                BoxShadow(
                                                    blurStyle: BlurStyle.outer,
                                                    blurRadius: 39,
                                                    spreadRadius: 0,
                                                    color: Color.fromARGB(
                                                        255, 160, 159, 159))
                                              ]),
                                          // width: double.infinity,
                                          child: Padding(
                                            padding: const EdgeInsets.all(14),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  dataController.dataList[index]
                                                      ['title'],
                                                  style: GoogleFonts.notoSansJp(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Container(
                                                      decoration: BoxDecoration(
                                                          color: Color.fromARGB(
                                                              255,
                                                              236,
                                                              234,
                                                              234),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10)),
                                                      height: 26,
                                                      width: 130,
                                                      child: Center(
                                                        child: Text(
                                                          dataController
                                                                      .dataList[
                                                                  index]
                                                              ['subtitle'],
                                                          style: GoogleFonts
                                                              .notoSansJp(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          214,
                                                                          162,
                                                                          4),
                                                                  fontSize: 10),
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      dataController
                                                              .dataList[index]
                                                          ['money'],
                                                      style: GoogleFonts
                                                          .notoSansJp(
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                    )
                                                  ],
                                                ),
                                                Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    SizedBox(height: 10),
                                                    Text(
                                                      dataController
                                                              .dataList[index]
                                                          ['time'],
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .labelSmall,
                                                    ),
                                                    SizedBox(height: 10),
                                                    Text(
                                                      dataController
                                                              .dataList[index]
                                                          ['label'],
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .labelSmall,
                                                    ),
                                                    SizedBox(height: 10),
                                                    Text(
                                                      dataController
                                                              .dataList[index]
                                                          ['moneySpend'],
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .labelSmall,
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                            dataController
                                                                        .dataList[
                                                                    index][
                                                                'favoritelabel'],
                                                            style: GoogleFonts
                                                                .notoSansJp(
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            151,
                                                                            149,
                                                                            143),
                                                                    fontSize:
                                                                        12)),
                                                        IconButton(
                                                            onPressed: () {
                                                              setState(() {
                                                                if (setc ==
                                                                    false) {
                                                                  setc == true;
                                                                } else if (setc ==
                                                                    true) {
                                                                  setc == false;
                                                                }
                                                              });
                                                            },
                                                            icon: SvgPicture
                                                                .asset(
                                                              'assets/images/HomePagePost/Group 243252.svg',
                                                              color: setc ==
                                                                      true
                                                                  ? Colors.red
                                                                  : Colors.grey,
                                                            ))
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
            ),
          )
        ],
      ),
    );
  }
}
