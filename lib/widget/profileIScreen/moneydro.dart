import 'package:flutter/material.dart';

class moneyDrop1 extends StatelessWidget {
  const moneyDrop1({super.key, required this.money});
  final String money;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        decoration: InputDecoration(
            hintText: "¥ $money",
            hintStyle: TextStyle(color: Color.fromRGBO(199, 196, 192, 1)),
            border: OutlineInputBorder(
                borderSide:
                    BorderSide(color: Color.fromRGBO(199, 196, 192, 1)))));
  }
}
