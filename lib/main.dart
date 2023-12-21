import 'package:flutter/material.dart';

import 'package:jiitak_technical_round/screen/mobile/Mobile_homePage.dart';
import 'package:jiitak_technical_round/screen/mobile/mainpage.dart';
import 'package:jiitak_technical_round/screen/mobile/splashScreen.dart';
import 'package:jiitak_technical_round/widget/HomeScreen/homepage_postScreen.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: SplashScreen());
  }
}
