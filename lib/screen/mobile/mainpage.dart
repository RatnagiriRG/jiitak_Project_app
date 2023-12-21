import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jiitak_technical_round/screen/mobile/Mobile_homePage.dart';
import 'package:jiitak_technical_round/screen/mobile/message.dart';
import 'package:jiitak_technical_round/screen/mobile/profilepage.dart';
import 'package:jiitak_technical_round/screen/mobile/stamppage.dart';
import 'package:jiitak_technical_round/screen/mobile/workpage.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:svg_flutter/svg.dart';

class Homepase extends StatefulWidget {
  const Homepase({super.key});

  @override
  State<Homepase> createState() => _HomepaseState();
}

class _HomepaseState extends State<Homepase> {
  final _controller = PersistentTabController(initialIndex: 0);
  List<Widget> _screens() {
    return [
      MobileHomePage(),
      WorkPage(),
      mobileStampPage(),
      messageScreen(),
      ProfilePage(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarItem() {
    return [
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(
            "assets/widgets/NavigatorButton/Group 243258searcg.svg",
            color: Color.fromRGBO(250, 170, 20, 1)),
        inactiveIcon: SvgPicture.asset(
            "assets/widgets/NavigatorButton/Group 243258searcg.svg",
            color: Color.fromRGBO(48, 48, 48, 1)),
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(
            "assets/widgets/NavigatorButton/Group 538Work.svg",
            color: Color.fromRGBO(250, 170, 20, 1)),
        inactiveIcon: SvgPicture.asset(
            "assets/widgets/NavigatorButton/Group 538Work.svg",
            color: Color.fromRGBO(48, 48, 48, 1)),
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(
          "assets/widgets/NavigatorButton/Group 243254icon.svg",
        ),
        title: "打刻する",
        textStyle:
            GoogleFonts.notoSansJp(fontSize: 8, fontWeight: FontWeight.w500),
        activeColorPrimary: Color.fromRGBO(250, 170, 20, 1),
        inactiveColorPrimary: Color.fromRGBO(48, 48, 48, 1),
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(
            "assets/widgets/NavigatorButton/Group 539Mesage.svg",
            color: Color.fromRGBO(250, 170, 20, 1)),
        inactiveIcon: SvgPicture.asset(
            "assets/widgets/NavigatorButton/Group 539Mesage.svg",
            color: Color.fromRGBO(48, 48, 48, 1)),
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(
            "assets/widgets/NavigatorButton/Group 540profile.svg",
            color: Color.fromRGBO(250, 170, 20, 1)),
        inactiveIcon: SvgPicture.asset(
            "assets/widgets/NavigatorButton/Group 540profile.svg",
            color: Color.fromRGBO(48, 48, 48, 1)),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: _screens(),
      items: _navBarItem(),
      decoration: NavBarDecoration(borderRadius: BorderRadius.circular(2)),
      navBarStyle: NavBarStyle.style15,
    );
  }
}
