// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:frensoo_the_handyman_app/common/appColors.dart';
import 'package:get/get.dart';

import '../../common/appStyles.dart';

class IntroTwo extends StatelessWidget {
  const IntroTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: height * 0.04,
          ),
          SizedBox(
            height: height * 0.1,
            width: width * 0.7,
            child: Text(
              'A solution to all your household chores',
              style: AppTextStyles.largeTitle,
            ),
          ),
          Center(
            child: SvgPicture.asset(
              'assets/svg/intro2.svg',
            ),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          SizedBox(
            height: height * 0.1,
            width: width * 0.7,
            child: Text(
              'Now you can order services anytime anywhere through Frensoo App',
             style: AppTextStyles.smallTitle,
            ),
          ),
        ],
      ),
    );
  }
}
