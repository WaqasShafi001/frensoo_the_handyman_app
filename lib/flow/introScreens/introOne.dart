// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:frensoo_the_handyman_app/common/appColors.dart';
import 'package:get/get.dart';

import '../../common/appStyles.dart';

class IntroOne extends StatelessWidget {
  const IntroOne({Key? key}) : super(key: key);

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
            height: height * 0.1,
            width: width * 0.7,
            child: Text(
              'A solution to all your household chores',
              style: AppTextStyles.largeTitle,
            ),
          ),
          SizedBox(
            height: height * 0.1,
            width: width * 0.7,
            child: Text(
              'Now you can order services anytime anywhere through Frensoo App',
              style: AppTextStyles.smallTitle,
            ),
          ),
          Center(
            child: SvgPicture.asset(
              'assets/svg/intro1.svg',
              //fit: BoxFit.fitWidth,
            ),
          ),
        ],
      ),
    );
  }
}
