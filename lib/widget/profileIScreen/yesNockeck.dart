import 'package:flutter/material.dart';

class YesNoCheck extends StatefulWidget {
  const YesNoCheck({super.key, required this.yes, required this.no});
  final String yes;
  final String no;

  @override
  State<YesNoCheck> createState() => _YesNoCheckState();
}

class _YesNoCheckState extends State<YesNoCheck> {
  bool yes = false;
  bool no = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            Checkbox(
              activeColor: Color.fromRGBO(238, 125, 66, 1),
              value: yes,
              onChanged: (value) {
                setState(() {
                  yes = true;
                  no = false;
                });
              },
            ),
            Text(widget.yes),
          ],
        ),
        Row(
          children: [
            Checkbox(
              activeColor: Color.fromRGBO(238, 125, 66, 1),
              value: no,
              onChanged: (value) {
                setState(() {
                  no = true;
                  yes = false;
                });
              },
            ),
            Text(widget.no),
          ],
        )
      ],
    );
  }
}
