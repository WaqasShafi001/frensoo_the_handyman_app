// ignore_for_file: file_names, prefer_const_constructors, sized_box_for_whitespace

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:frensoo_the_handyman_app/Global/currentLocation.dart';
import 'package:frensoo_the_handyman_app/common/appColors.dart';
import 'package:frensoo_the_handyman_app/flow/introScreens/introScreens.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../common/logUtil.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
        Duration(
          seconds: 3,
        ),
        () => Get.to(IntroScreens()));

    //  getStorage();
  }

  // getStorage() async {
  //   GetStorage storage = GetStorage();
  //   printlog('userId = ${storage.read('userId')}');
  //   if (await storage.read('userId') == null) {
  //     Future.delayed(Duration(seconds: 2), () {
  //       Get.offAll(HomeScreen());
  //     });
  //   } else {
  //     if (await storage.read('isFirst') == null) {
  //       Future.delayed(const Duration(seconds: 2), () {
  //         Get.offAll(IntroScreens());
  //       });
  //     }
  //     else {
  //       Future.delayed(const Duration(seconds: 2), () {
  //         Get.offAll(HomeScreen());
  //       });
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.white,
        body: LayoutBuilder(
          builder: (context, constraints) => Container(
              height: constraints.maxHeight,
              width: constraints.maxWidth,
              child: Stack(
                //   alignment: Alignment.center,s
                children: [
                  ZoomIn(
                    duration: Duration(seconds: 1),
                    child: Center(
                      child: SvgPicture.asset(
                        'assets/svg/splash_logo.svg',
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -60,
                    child: FadeInUp(
                      duration: Duration(seconds: 1),
                      child: Center(
                        child: SvgPicture.asset(
                          'assets/svg/splash_bottom_art.svg',
                        ),
                      ),
                    ),
                  ),
                ],
              )),
        ));
  }
}
