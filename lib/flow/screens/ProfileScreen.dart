// ignore_for_file: file_names, prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, unused_local_variable

import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:frensoo_the_handyman_app/common/appColors.dart';
import 'package:frensoo_the_handyman_app/common/appStyles.dart';
import 'package:frensoo_the_handyman_app/common/logUtil.dart';
import 'package:frensoo_the_handyman_app/widgets/inputTextField.dart';
import 'package:frensoo_the_handyman_app/widgets/profilePhoneNumTextField.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.06),
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          shrinkWrap: true,
          children: [
            SizedBox(
              height: height * 0.04,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Create Profile',
                style: AppTextStyles.largeTitle,
              ),
            ),
            SizedBox(
              height: height * 0.015,
            ),
            Text(
              'Upload Profile Picture',
              style: AppTextStyles.smallTitleBlue,
            ),
            SizedBox(
              height: height * 0.025,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: CircleAvatar(
                radius: width * 0.083,
                backgroundColor: AppColors.blue,
                child: CircleAvatar(
                  backgroundColor: AppColors.lightBlue,
                  radius: width * 0.08,
                  child: SvgPicture.asset(
                    'assets/svg/cameraIconProfile.svg',
                    height: height * 0.035,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.025,
            ),
            InputTextField(
              topLabel: 'Full Name',
            ),
            SizedBox(
              height: height * 0.025,
            ),
            ProfileNumTextFormField(),
            SizedBox(
              height: height * 0.025,
            ),
            InputTextField(
              topLabel: 'Email Address',
            ),
            SizedBox(
              height: height * 0.025,
            ),
            InputTextField(
              topLabel: 'Password',
            ),
            SizedBox(
              height: height * 0.025,
            ),
            InputTextField(
              topLabel: 'Confirm Password',
            ),
            SizedBox(
              height: height * 0.028,
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'By continuing Sign Up you are agreeing to Handyman\'s ',
                style: AppTextStyles.smallTitle,
                children: <TextSpan>[
                  TextSpan(
                      text: 'Terms of use',
                      style: AppTextStyles.smallTitleBlue),
                  TextSpan(text: ' and ', style: AppTextStyles.smallTitle),
                  TextSpan(
                      text: 'privacy policy.',
                      style: AppTextStyles.smallTitleBlue),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.028,
            ),
            Center(
              child: SizedBox(
                height: height * 0.06,
                width: width * 0.4,
                child: ElevatedButton(
                  onPressed: () {
                    //  Get.to(BottomNavBarView());
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      AppColors.blue,
                    ),
                  ),
                  child: Text(
                    'Create Profile',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.028,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 0.5,
                  width: width * 0.25,
                  color: AppColors.blackColor,
                ),
                Text('or Continue with'),
                Container(
                  height: 0.5,
                  width: width * 0.25,
                  color: AppColors.blackColor,
                ),
              ],
            ),
            SizedBox(
              height: height * 0.028,
            ),
            Row(
              children: [
                Center(
                  child: SizedBox(
                    height: height * 0.06,
                    width: width * 0.4,
                    child: ElevatedButton(
                      onPressed: () {
                        //  Get.to(BottomNavBarView());
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          AppColors.fbButtonColor,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/svg/fbIcon.svg',
                            height: height * 0.028,
                          ),
                          SizedBox(width: width * 0.015),
                          Text(
                            'Sign Up',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: width * 0.05),
                Center(
                  child: SizedBox(
                    height: height * 0.06,
                    width: width * 0.4,
                    child: ElevatedButton(
                      onPressed: () {
                        //  Get.to(BottomNavBarView());
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          AppColors.redColor,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/svg/googleIcon.svg',
                            height: height * 0.028,
                          ),
                          SizedBox(width: width * 0.015),
                          Text(
                            'Sign Up',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: height * 0.025)
          ],
        ),
      ),
    );
  }
}
