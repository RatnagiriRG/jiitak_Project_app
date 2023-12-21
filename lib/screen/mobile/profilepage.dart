import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:jiitak_technical_round/widget/HomeScreen/checkBox.dart';
import 'package:jiitak_technical_round/widget/profileIScreen/badge.dart';
import 'package:jiitak_technical_round/widget/profileIScreen/dropdow.dart';
import 'package:jiitak_technical_round/widget/profileIScreen/itemimage.dart';
import 'package:jiitak_technical_round/widget/profileIScreen/mapPage.dart';
import 'package:jiitak_technical_round/widget/profileIScreen/moneydro.dart';
import 'package:jiitak_technical_round/widget/profileIScreen/profileBack.dart';
import 'package:jiitak_technical_round/widget/profileIScreen/selectedImage.dart';
import 'package:jiitak_technical_round/widget/profileIScreen/selectedImage2.dart';
import 'package:jiitak_technical_round/widget/profileIScreen/selectedImage3.dart';
import 'package:jiitak_technical_round/widget/profileIScreen/selectedImage4.dart';
import 'package:jiitak_technical_round/widget/profileIScreen/submittbutton.dart';
import 'package:jiitak_technical_round/widget/profileIScreen/timedropdown.dart';
import 'package:jiitak_technical_round/widget/profileIScreen/yesNockeck.dart';
import 'package:jiitak_technical_round/widget/stampScreen/backbutton.dart';
import 'package:latlong2/latlong.dart';
import 'package:svg_flutter/svg.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          // color: Colors.amber,
          height: height,
          child: SafeArea(
            child: width <= 380
                ? Container(
                  decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.cyan,Colors.white])),
                    child: Center(child: Text("このデバイスはこのアプリをサポートしていません")),
                  )
                : Padding(
                    padding: const EdgeInsets.all(8),
                    child: SafeArea(
                      child: SingleChildScrollView(
                        child: SafeArea(
                          child: SizedBox(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    ProfileBack(),
                                    Text("店舗プロフィール編集",
                                        style: GoogleFonts.notoSansJp(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                            color:
                                                Color.fromRGBO(75, 73, 72, 1))),
                                    BadgeIcons(),
                                  ],
                                ),
                                Form(
                                  child: SizedBox(
                                    height: height - height / 7,
                                    child: SingleChildScrollView(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(height: 15),
                                          Text("店舗名",
                                              style: GoogleFonts.notoSansJp(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black)),
                                          SizedBox(height: 5),
                                          TextFormField(
                                              decoration: InputDecoration(
                                                  hintText: "Mer キッチン",
                                                  hintStyle: Theme.of(context)
                                                      .textTheme
                                                      .bodyLarge,
                                                  border:
                                                      OutlineInputBorder())),

                                          //
                                          //
                                          //
                                          SizedBox(height: 15),
                                          Text("代表担当者名",
                                              style: GoogleFonts.notoSansJp(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black)),
                                          SizedBox(height: 5),
                                          TextFormField(
                                              decoration: InputDecoration(
                                                  hintText: "林田　絵梨花",
                                                  hintStyle: Theme.of(context)
                                                      .textTheme
                                                      .bodyLarge,
                                                  border:
                                                      OutlineInputBorder())),

                                          //
                                          //
                                          //
                                          SizedBox(height: 15),
                                          Text("店舗電話番号",
                                              style: GoogleFonts.notoSansJp(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black)),
                                          SizedBox(height: 5),
                                          TextFormField(
                                              decoration: InputDecoration(
                                                  hintText: "123 - 4567 8910",
                                                  hintStyle: Theme.of(context)
                                                      .textTheme
                                                      .bodyLarge,
                                                  border:
                                                      OutlineInputBorder())),

                                          //
                                          //
                                          //
                                          SizedBox(height: 15),
                                          Text("店舗住所",
                                              style: GoogleFonts.notoSansJp(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black)),
                                          SizedBox(height: 5),
                                          TextFormField(
                                              decoration: InputDecoration(
                                                  hintText: "大分県豊後高田市払田791-13",
                                                  hintStyle: Theme.of(context)
                                                      .textTheme
                                                      .bodyLarge,
                                                  border:
                                                      OutlineInputBorder())),
                                          SizedBox(height: 15),

                                          ProfileMapPage(),

                                          SizedBox(height: 15),

                                          Row(
                                            children: [
                                              Text(
                                                "店舗外観",
                                                style: GoogleFonts.notoSansJp(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black),
                                              ),
                                              Text(
                                                " （最大3枚まで）",
                                                style: GoogleFonts.notoSansJp(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    color: Color.fromARGB(
                                                        255, 111, 110, 110)),
                                              )
                                            ],
                                          ),
                                          //
                                          //
                                          //
                                          SelectedImage1(),

                                          SizedBox(height: 15),

                                          Row(
                                            children: [
                                              Text(
                                                "店舗内観",
                                                style: GoogleFonts.notoSansJp(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black),
                                              ),
                                              Text(
                                                "（1枚〜3枚ずつ追加してください）",
                                                style: GoogleFonts.notoSansJp(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    color: Color.fromARGB(
                                                        255, 111, 110, 110)),
                                              )
                                            ],
                                          ),
                                          SelecetedImage2(),
                                          SizedBox(height: 15),

                                          Row(
                                            children: [
                                              Text(
                                                "料理写真",
                                                style: GoogleFonts.notoSansJp(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black),
                                              ),
                                              Text(
                                                "（1枚〜3枚ずつ追加してください）",
                                                style: GoogleFonts.notoSansJp(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    color: Color.fromARGB(
                                                        255, 111, 110, 110)),
                                              )
                                            ],
                                          ),
                                          selectedImage3(),
                                          SizedBox(height: 15),

                                          Row(
                                            children: [
                                              Text(
                                                "メニュー写真",
                                                style: GoogleFonts.notoSansJp(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black),
                                              ),
                                              Text(
                                                "（1枚〜3枚ずつ追加してください）",
                                                style: GoogleFonts.notoSansJp(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    color: Color.fromARGB(
                                                        255, 111, 110, 110)),
                                              )
                                            ],
                                          ),
                                          selectedImage4(),

                                          SizedBox(
                                            height: 15,
                                          ),
                                          Text(
                                            "営業時間",
                                            style: GoogleFonts.notoSansJp(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black),
                                          ),
                                          SizedBox(
                                            width: width / 2,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                DropDownTimeButton(),
                                                Text("〜"),
                                                DropDownTimeButton2()
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),

                                          Text(
                                            "ランチ時間",
                                            style: GoogleFonts.notoSansJp(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black),
                                          ),
                                          SizedBox(
                                            width: width / 2,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                DropDownTimeButton3(),
                                                Text("〜"),
                                                dropDowntimeButton4(),
                                              ],
                                            ),
                                          ),

                                          SizedBox(
                                            height: 15,
                                          ),
                                          Text(
                                            "定休日",
                                            style: GoogleFonts.notoSansJp(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black),
                                          ),
                                          ProfilePageCheckBox(),

                                          SizedBox(
                                            height: 15,
                                          ),
                                          Text("料理カテゴリー",
                                              style: GoogleFonts.notoSansJp(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black)),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          SizedBox(
                                            height: 60,
                                            width: width / 2,
                                            child: TextFormField(
                                                decoration: InputDecoration(
                                                    hintText: "料理カテゴリー選択 ",
                                                    hintStyle: TextStyle(
                                                        color: Color.fromRGBO(
                                                            199, 196, 192, 1)),
                                                    border: OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color:
                                                                Color.fromRGBO(
                                                                    199,
                                                                    196,
                                                                    192,
                                                                    1))))),
                                          ),

                                          SizedBox(
                                            height: 15,
                                          ),
                                          Text("予算",
                                              style: GoogleFonts.notoSansJp(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black)),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          SizedBox(
                                            width: width / 2,
                                            height: 40,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Expanded(
                                                    child: moneyDrop1(
                                                        money: "1000")),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text("〜"),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Expanded(
                                                    child: moneyDrop1(
                                                        money: "2000")),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 15),
                                          Text("キャッチコピー",
                                              style: GoogleFonts.notoSansJp(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black)),
                                          SizedBox(height: 5),
                                          TextFormField(
                                              decoration: InputDecoration(
                                                  hintText:
                                                      "美味しい！リーズナブルなオムライスランチ！",
                                                  hintStyle: Theme.of(context)
                                                      .textTheme
                                                      .bodyLarge,
                                                  border:
                                                      OutlineInputBorder())),
                                          SizedBox(height: 15),

                                          SizedBox(height: 15),
                                          Text("座席数",
                                              style: GoogleFonts.notoSansJp(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black)),
                                          SizedBox(height: 5),
                                          TextFormField(
                                              decoration: InputDecoration(
                                                  hintText: "40席",
                                                  hintStyle: Theme.of(context)
                                                      .textTheme
                                                      .bodyLarge,
                                                  border:
                                                      OutlineInputBorder())),
                                          SizedBox(height: 15),

                                          Text("喫煙席",
                                              style: GoogleFonts.notoSansJp(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black)),
                                          SizedBox(
                                            width: width / 2,
                                            child: Row(
                                              children: [
                                                YesNoCheck(yes: "有", no: "無")
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 15),

                                          Text("駐車場",
                                              style: GoogleFonts.notoSansJp(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black)),
                                          SizedBox(
                                            width: width / 2,
                                            child: Row(
                                              children: [
                                                YesNoCheck(yes: "有", no: "無")
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 15),

                                          Text("来店プレゼント",
                                              style: GoogleFonts.notoSansJp(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black)),
                                          SizedBox(
                                            width: width,
                                            child: Row(
                                              children: [
                                                YesNoCheck(
                                                    yes: "有（最大３枚まで）", no: "無")
                                              ],
                                            ),
                                          ),
                                          //
                                          //
                                          //
                                          SizedBox(height: 15),
                                          Text("来店プレゼント名",
                                              style: GoogleFonts.notoSansJp(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black)),
                                          SizedBox(height: 5),
                                          TextFormField(
                                              decoration: InputDecoration(
                                                  hintText:
                                                      "いちごクリームアイスクリーム, ジュース",
                                                  hintStyle: Theme.of(context)
                                                      .textTheme
                                                      .bodyLarge,
                                                  border:
                                                      OutlineInputBorder())),

                                          ItemImagesprofile(),

                                          SizedBox(
                                            height: height / 20,
                                          ),
                                          Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  gradient: LinearGradient(
                                                      colors: [
                                                        Color.fromARGB(
                                                            255, 246, 115, 159),
                                                        const Color.fromARGB(
                                                            255, 253, 218, 218)
                                                      ])),
                                              width: height <= width
                                                  ? width / 3
                                                  : width,
                                              child: SubmittButtonprofile()),

                                          SizedBox(height: 105),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}

Widget _buildImageCard(File imageFile) {
  return Card(
    child: ListTile(
      title: Image.file(imageFile),
    ),
  );
}
