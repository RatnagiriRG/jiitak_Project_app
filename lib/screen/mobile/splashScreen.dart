import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jiitak_technical_round/screen/mobile/mainpage.dart';
import 'package:svg_flutter/svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController controller;

  void initState() {
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 5))
          ..addListener(() {
            setState(() {});
          });
    controller.repeat(reverse: false);

    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(Duration(seconds: 5), () {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => Homepase(),
      ));
    });
    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        seyy = true;
      });
    });
  }

  bool seyy = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.only(left: 100, right: 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/splashScreen/jiitak_logo.jpeg"),
            LinearProgressIndicator(
              value: controller.value,
              backgroundColor: Colors.amber,
              color: Color.fromARGB(255, 221, 221, 221),
            ),
            Text(
              seyy == false ? "" : "読み込み中..",
              style: GoogleFonts.aBeeZee(fontSize: 12),
            )
          ],
        ),
      ),
    ));
  }
}
