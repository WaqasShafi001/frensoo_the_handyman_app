// ignore_for_file: file_names, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:frensoo_the_handyman_app/common/appColors.dart';
import 'package:get/get.dart';

class SearchTextField extends StatefulWidget {
  const SearchTextField({Key? key}) : super(key: key);

  @override
  _SearchTextFieldState createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;
    return Center(
      child: Container(
        height: height * 0.044,
        width: width * 0.9,
        child: TextFormField(
          decoration: InputDecoration(
            suffixIcon: Icon(
              Icons.search,
              color: AppColors.blue,
              size: 25,
            ),
            isDense: true,
            enabledBorder: const OutlineInputBorder(
              // width: 0.0 produces a thin "hairline" border
              borderSide: BorderSide(color: AppColors.blue, width: 1),
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
          ),
          keyboardType: TextInputType.name,
          textInputAction: TextInputAction.done,
          textAlignVertical: TextAlignVertical.center,
        ),
      ),
    );
  }
}
