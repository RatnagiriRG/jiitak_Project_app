import 'package:flutter/material.dart';

class ProfileBack extends StatelessWidget {
  const ProfileBack({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {},
        icon: CircleAvatar(
            radius: 30,
            backgroundColor: Color.fromRGBO(140, 129, 123, 0.1),
            child: Center(
                child: Icon(
              Icons.arrow_back_ios_sharp,
              color: Color.fromRGBO(184, 184, 184, 1),
            ))));
  }
}
