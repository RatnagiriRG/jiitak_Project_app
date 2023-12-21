import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';
import 'package:badges/badges.dart' as badges;

class BadgeIcons extends StatefulWidget {
  const BadgeIcons({super.key});

  @override
  State<BadgeIcons> createState() => _BadgeIconsState();
}

class _BadgeIconsState extends State<BadgeIcons> {
  int cout = 1;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          cout++;
        });
      },
      child: badges.Badge(
        badgeAnimation: badges.BadgeAnimation.rotation(),
        onTap: () {
          setState(() {
            cout++;
          });
        },
        badgeContent: Text(
          "$cout",
          style: TextStyle(color: Colors.white, fontSize: 12),
        ),
        child:
            SvgPicture.asset("assets/images/ProfilePage/Group 243259bell.svg"),
      ),
    );
  }
}
