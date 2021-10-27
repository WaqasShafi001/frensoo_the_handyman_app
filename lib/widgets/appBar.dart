// ignore_for_file: file_names, prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:frensoo_the_handyman_app/common/appColors.dart';

customAppbar() {
  return PreferredSize(
    child: SafeArea(
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.white,
          boxShadow:[
            BoxShadow(
              color: AppColors.greyColor.withOpacity(0.4),
              blurRadius: 3
            ),
            
          ]
          
        ),

        // elevation: 3,
        // shadowColor: AppColors.greyColor.withOpacity(0.4),
        // color: AppColors.white,

        child: Column(
          children: [
            // SizedBox(
            //   height: 40,
            // ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  flex: 7,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      Image.asset(
                        'assets/icons/locationIcon.png',
                        color: AppColors.blue,
                        height: 20,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Column(
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
                          Row(
                            children: [
                              Text(
                                'New Lalazar, Rawalpindi',
                                style: TextStyle(
                                  color: AppColors.greyColor,
                                  fontSize: 14,
                                ),
                              ),
                              Icon(Icons.keyboard_arrow_down,
                                  color: AppColors.blue),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Flexible(
                  flex: 3,
                  child: Column(
                    children: [
                      // SizedBox(
                      //   height: 50,
                      // ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/icons/smsIcon.png',
                            color: AppColors.blue,
                            height: 26,
                            width: 25,
                          ),
                          Image.asset(
                            'assets/icons/notificationIcon.png',
                            color: AppColors.blue,
                            height: 26,
                            width: 25,
                          ),
                          Icon(
                            Icons.shopping_cart,
                            color: AppColors.blue,
                            size: 22,
                          ),
                          Icon(
                            Icons.more_vert,
                            color: AppColors.blue,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
    preferredSize: Size.fromHeight(60),
  );
}
