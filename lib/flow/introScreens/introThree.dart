// ignore_for_file: file_names, prefer_const_constructors

import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:frensoo_the_handyman_app/common/appColors.dart';
import 'package:frensoo_the_handyman_app/common/appStyles.dart';
import 'package:frensoo_the_handyman_app/common/logUtil.dart';
import 'package:frensoo_the_handyman_app/widgets/phoneNumTextField.dart';
import 'package:get/get.dart';

class IntroThree extends StatefulWidget {
  const IntroThree({Key? key}) : super(key: key);

  @override
  State<IntroThree> createState() => _IntroThreeState();
}

class _IntroThreeState extends State<IntroThree> {
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
          Center(
            child: SvgPicture.asset(
              'assets/svg/intro3.svg',
            ),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          SizedBox(
            height: height * 0.06,
            width: width * 0.8,
            child: Center(
              child: Text(
                'Your home services expert',
                style: AppTextStyles.largeTitle,
              ),
            ),
          ),
          SizedBox(
            width: width * 0.8,
            child: Center(
              child: Text(
                'The app you can trust',
                style: AppTextStyles.smallTitle,
              ),
            ),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          PhoneNumTextField(),
        ],
      ),
    );
  }
}
