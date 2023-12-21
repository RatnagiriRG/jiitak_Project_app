import 'package:flutter/material.dart';

class ProfilePageCheckBox extends StatefulWidget {
  const ProfilePageCheckBox({super.key});

  @override
  State<ProfilePageCheckBox> createState() => _ProfilePageCheckBoxState();
}

class _ProfilePageCheckBoxState extends State<ProfilePageCheckBox> {
  bool _first = false;
  bool _second = false;
  bool _third = false;
  bool _forth = false;
  bool _fifth = false;
  bool _sixth = false;
  bool _seventh = false;
  bool _eight = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Row(
              children: [
                Checkbox(
                  activeColor: Color.fromRGBO(238, 125, 66, 1),
                  value: _first,
                  onChanged: (value) {
                    setState(() {
                      _first = value!;
                    });
                  },
                ),
                Text("月"),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  activeColor: Color.fromRGBO(238, 125, 66, 1),
                  value: _second,
                  onChanged: (value) {
                    setState(() {
                      _second = value!;
                    });
                  },
                ),
                Text("火"),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  activeColor: Color.fromRGBO(238, 125, 66, 1),
                  value: _third,
                  onChanged: (value) {
                    setState(() {
                      _third = value!;
                    });
                  },
                ),
                Text("水"),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  activeColor: Color.fromRGBO(238, 125, 66, 1),
                  value: _forth,
                  onChanged: (value) {
                    setState(() {
                      _forth = value!;
                    });
                  },
                ),
                Text("木"),
              ],
            ),
          ],
        ),
        //second
        Row(
          children: [
            Row(
              children: [
                Checkbox(
                  activeColor: Color.fromRGBO(238, 125, 66, 1),
                  value: _fifth,
                  onChanged: (value) {
                    setState(() {
                      _fifth = value!;
                    });
                  },
                ),
                Text("金"),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  activeColor: Color.fromRGBO(238, 125, 66, 1),
                  value: _sixth,
                  onChanged: (value) {
                    setState(() {
                      _sixth = value!;
                    });
                  },
                ),
                Text("土"),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  activeColor: Color.fromRGBO(238, 125, 66, 1),
                  value: _seventh,
                  onChanged: (value) {
                    setState(() {
                      _seventh = value!;
                    });
                  },
                ),
                Text("日"),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  activeColor: Color.fromRGBO(238, 125, 66, 1),
                  value: _eight,
                  onChanged: (value) {
                    setState(() {
                      _eight = value!;
                    });
                  },
                ),
                Text("祝"),
              ],
            ),
          ],
        )
      ],
    );
  }
}
