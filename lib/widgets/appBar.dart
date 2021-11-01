// ignore_for_file: file_names, prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:frensoo_the_handyman_app/common/appColors.dart';
import 'package:frensoo_the_handyman_app/controllers/locationPickerController.dart';
import 'package:frensoo_the_handyman_app/flow/screens/locationPickerScreen.dart';
import 'package:get/get.dart';

customAppbar() {
  var locationPickerController = Get.put(LocationPickerController());
  var width = Get.width;
  var height = Get.height;

  return PreferredSize(
    child: SafeArea(
      child: Container(
        decoration: BoxDecoration(color: AppColors.white, boxShadow: [
          BoxShadow(color: AppColors.greyColor.withOpacity(0.4), blurRadius: 3),
        ]),

        // elevation: 3,
        // shadowColor: AppColors.greyColor.withOpacity(0.4),
        // color: AppColors.white,

        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              flex: 7,
              child: Container(
                // color: Colors.green,
                child: Center(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/icons/locationIcon.png',
                        color: AppColors.blue,
                        height: 20,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      InkWell(
                        onTap: () {
                          print('tadaa');
                          Get.to(LocationPickerScreen());
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Delivery Location',
                              style: TextStyle(
                                color: AppColors.blackColor,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Obx(
                              () => Container(
                                width: width * 0.45,
                                // height: height * 0.035,
                                // color: Colors.amber,
                                child: Text(
                                  locationPickerController
                                              .selectedPlace.value !=
                                          ''
                                      ? locationPickerController
                                          .selectedPlace.value
                                      : 'New Lalazar, Rawalpindi',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: AppColors.greyColor,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Icon(Icons.keyboard_arrow_down, color: AppColors.blue),
                    ],
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 3,
              child: Column(
                children: [
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/icons/smsIcon.png',
                        color: AppColors.blue,
                        scale: 0.75,
                        // height: 26,
                        // width: 25,
                      ),
                      SizedBox(width: width * 0.0),
                      Image.asset(
                        'assets/icons/notificationIcon.png',
                        color: AppColors.blue,
                        scale: 0.75,
                      ),
                      SizedBox(width: width * 0.0),
                      Icon(
                        Icons.shopping_cart,
                        color: AppColors.blue,
                        size: 25,
                      ),
                      Icon(
                        Icons.more_vert,
                        color: AppColors.blue,
                      ),
                      SizedBox(
                        width: 0,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
    preferredSize: Size.fromHeight(60),
  );
}
