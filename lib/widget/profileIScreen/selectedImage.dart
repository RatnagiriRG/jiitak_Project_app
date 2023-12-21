import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:image_picker/image_picker.dart';
import 'package:jiitak_technical_round/getX/imageprovider.dart';
import 'package:svg_flutter/svg.dart';

class SelectedImage1 extends StatefulWidget {
  const SelectedImage1({super.key});

  @override
  State<SelectedImage1> createState() => _SelectedImage1State();
}

class _SelectedImage1State extends State<SelectedImage1> {
  final ImagePicker _imagePicker = ImagePicker();
  List<File> selectedImages = [];

  void _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        selectedImages.add(File(pickedFile.path));
      
      });
    }
  }

  void _pickImageCamera() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.camera);

    if (pickedFile != null) {
      setState(() {
        selectedImages.add(File(pickedFile.path));
       
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Row(
          children: [
            Container(
              width: width - width / 4,
              height: 100,
              child: ListView.builder(
                itemCount: selectedImages.isEmpty ? 1 : selectedImages.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      //
                      child: selectedImages.isEmpty
                          ? GestureDetector(
                              onTap: _pickImage,
                              onLongPress: _pickImageCamera,
                              child: SvgPicture.asset(
                                  "assets/images/ProfilePage/Group 243259.svg"),
                            )
                          : Row(
                              children: [
                                SizedBox(
                                  height: 100,
                                  child: Image.file(selectedImages[index]),
                                ),
                                SizedBox(
                                  width: 10,
                                )
                              ],
                            ));
                },
              ),
            ),
            SizedBox(
              width: 4,
            ),
            selectedImages.isNotEmpty
                ? GestureDetector(
                    onLongPress: _pickImageCamera,
                    onTap: _pickImage,
                    child: SvgPicture.asset(
                        "assets/images/ProfilePage/Group 243259.svg"),
                  )
                : Container()
          ],
        ),
      ),
    );
  }
}
