import 'package:flutter/material.dart';
import 'package:jiitak_technical_round/screen/mobile/Mobile_homePage.dart';
import 'package:svg_flutter/svg.dart';

class stampBack extends StatelessWidget {
  const stampBack({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => MobileHomePage(),
          ));
        },
        icon: CircleAvatar(
          backgroundColor: Color.fromRGBO(106, 169, 245, 1),
          child: SvgPicture.asset(
              'assets/images/stampage/Group 243257avatar icon.svg'),
        ));
  }
}
