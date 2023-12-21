import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class FavoriteButton extends StatelessWidget {
  const FavoriteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {},
        icon: SvgPicture.asset('assets/widgets/homePage/VectoraddedFav.svg'));
  }
}
