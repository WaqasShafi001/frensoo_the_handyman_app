// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:frensoo_the_handyman_app/common/appColors.dart';
import 'package:frensoo_the_handyman_app/common/appStyles.dart';
import 'package:frensoo_the_handyman_app/flow/customNavBar/bottomNavBarView.dart';
import 'package:get/get.dart';

import 'introOne.dart';
import 'introThree.dart';
import 'introTwo.dart';

class IntroScreens extends StatefulWidget {
  const IntroScreens({Key? key}) : super(key: key);

  @override
  _IntroScreensState createState() => _IntroScreensState();
}

class _IntroScreensState extends State<IntroScreens> {
  int currentIndex = 0;
  List listdot = [1, 2, 3];
  PageController pageController = PageController();
  List<Widget> listOfWidget = [IntroOne(), IntroTwo(), IntroThree()];
  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: height,
        width: width,
        color: AppColors.white,
        child: Stack(
          children: [
            PageView.builder(
              itemBuilder: (c, index) => listOfWidget[index],
              controller: pageController,
              itemCount: listOfWidget.length,
              physics: NeverScrollableScrollPhysics(),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: height * 0.090,
                width: width,
                padding: EdgeInsets.symmetric(horizontal: width * 0.045),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: listdot.map((e) {
                          int index = listdot.indexOf(e);
                          return currentIndex == index
                              ? Container(
                                  height: 10,
                                  width: 10,
                                  margin: EdgeInsets.only(right: 5),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppColors.blue),
                                )
                              : Container(
                                  height: 10,
                                  width: 10,
                                  margin: EdgeInsets.only(right: 5),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColors.lightBlue,
                                  ),
                                );
                        }).toList(),
                      ),
                    ),
                    InkWell(
                      splashColor: AppColors.white,
                      onTap: () {
                        if (currentIndex != 2) {
                          setState(() {
                            currentIndex = currentIndex + 1;
                          });
                          pageController.nextPage(
                              duration: Duration(milliseconds: 700),
                              curve: Curves.easeIn);
                        } else {
                          Get.offAll(BottomNavBarView());
                        }
                      },
                      child: Align(
                        child: Container(
                          height: height * 0.06,
                          width: width * 0.2,
                          margin: EdgeInsets.only(
                              top: 0, left: 0, right: 20, bottom: 10),
                          decoration: BoxDecoration(
                            color: AppColors.blue,
                            borderRadius:
                                BorderRadius.all(Radius.elliptical(130, 80)),
                          ),
                          child: Center(
                            child: Text(
                              'Next',
                              style: TextStyle(
                                color: AppColors.white,
                                letterSpacing: 1,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                decoration: BoxDecoration(color: AppColors.white),
              ),
            ),
            Positioned(
              top: height * 0.06,
              right: width * 0.07,
              child: InkWell(
                onTap: () => Get.to(BottomNavBarView()),
                child: Material(
                  color: Colors.transparent,
                  child: Text('Skip', style: AppTextStyles.smallTitle),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
