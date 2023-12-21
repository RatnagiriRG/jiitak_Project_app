import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class StampminusCircle extends StatelessWidget {
  const StampminusCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          print("minuscircle Pressed");
        },
        icon: SvgPicture.asset("assets/images/stampage/minus-circle.svg"));
  }
}
