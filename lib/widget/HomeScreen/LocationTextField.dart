import 'package:flutter/material.dart';


class HomePageLocationField extends StatelessWidget {
  const HomePageLocationField({super.key});

  @override
  Widget build(BuildContext context) {


    return Container(
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: TextField(
            decoration: InputDecoration(
                hintText: "北海道, 札幌市",
                hintStyle: Theme.of(context).textTheme.labelSmall,
                filled: true,
                fillColor: Color.fromRGBO(238, 238, 238, 1),
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(40))),
          ),
        ),
      ),
    );
  }
}
