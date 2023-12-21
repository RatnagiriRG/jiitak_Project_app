import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jiitak_technical_round/screen/mobile/locationpage.dart';
import 'package:jiitak_technical_round/widget/HomeScreen/FavoriteButton.dart';
import 'package:jiitak_technical_round/widget/HomeScreen/FilterButton.dart';
import 'package:jiitak_technical_round/widget/HomeScreen/LocationTextField.dart';
import 'package:jiitak_technical_round/widget/HomeScreen/dateScroller.dart';
import 'package:jiitak_technical_round/widget/HomeScreen/homepage_postScreen.dart';
import 'package:svg_flutter/svg.dart';

class MobileHomePage extends StatelessWidget {
  const MobileHomePage({super.key});

  @override
  Widget build(BuildContext context) {


    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  HomePageLocationField(),
                  HomeScreenFilterButton(),
                  FavoriteButton(),
                ],
              ),
              SizedBox(
                child: HomePageDateScroller(),
              ),
              Container(
                height: height - height / 3,
                child: SingleChildScrollView(
                    child: Column(
                  children: [homePagePost()],
                )),
              )
            ],
          ),
        ),
      )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => LocationPage(),
          ));
        },
        child: SvgPicture.asset('assets/widgets/homePage/Group 243250.svg'),
      ),
    );
  }
}
