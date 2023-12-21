import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class HomeScreenFilterButton extends StatelessWidget {
  const HomeScreenFilterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
            'assets/widgets/homePage/Filter_icon_filterIcon.svg'));
  }
}
