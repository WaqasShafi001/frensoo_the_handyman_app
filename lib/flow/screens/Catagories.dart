// ignore_for_file: file_names, prefer_const_constructors, unused_local_variable, prefer_const_literals_to_create_immutables, sized_box_for_whitespace
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:frensoo_the_handyman_app/CustomUiWidgets/CustomUi.dart';
import 'package:frensoo_the_handyman_app/flow/screens/AirConditionerService.dart';
import 'package:frensoo_the_handyman_app/flow/screens/HourlyService.dart';
import 'package:frensoo_the_handyman_app/flow/screens/homeScreen.dart';
import 'package:frensoo_the_handyman_app/widgets/appBar.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class Categories extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: height * 0.020,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.040),
              child: Row(
                children: [
                  Text(
                    'Categories and Services',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.only(left: width * 0.030),
              child: Row(
                children: [
                  CategoryWidget(
                    height: height,
                    width: width,
                    serviceTitle: 'Permotion and Discount',
                    imgPath: 'assets/svg/permotion.svg',
                    
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 13,top: 5),
                    child: GestureDetector(
                      onTap: () {
                        pushNewScreen(
                                context,
                                screen: HourlyService(),
                                withNavBar:
                                    true, // OPTIONAL VALUE. True by default.
                                pageTransitionAnimation:
                                    PageTransitionAnimation.cupertino,
                              );
                
                },
                      child: CategoryWidget(
                        height: height,
                        width: width ,
                        serviceTitle: 'Hourly Services ',
                        imgPath: 'assets/svg/hourly.svg',
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.020),
              child: Row(
                children: [
                  Text(
                    'Repair and Maintenance',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.015
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {

                    pushNewScreen(
                                context,
                                screen: AirConditionerServiceScreen(),
                                withNavBar:
                                    true, // OPTIONAL VALUE. True by default.
                                pageTransitionAnimation:
                                    PageTransitionAnimation.cupertino,
                              );

                   // Get.to(AirConditionerServiceScreen());
                  },
                  child: CategoryWidget(
                    height: height,
                    width: width ,
                    serviceTitle: 'Air Conditioning Service',
                    imgPath: 'assets/svg/AirConditionService.svg',
                  ),
                ),
                CategoryWidget(
                  height: height,
                  width: width,
                  serviceTitle: 'Electrical Services',
                  imgPath: 'assets/svg/electric.svg',
                ),
                CategoryWidget(
                  height: height,
                  width: width ,
                  serviceTitle: 'Woodwork and Carpenter Service',
                  imgPath: 'assets/svg/carpenter.svg',
                ),
                CategoryWidget(
                  height: height,
                  width: width,
                  serviceTitle: 'Auto MAchanical and Cleaning Services',
                  imgPath: 'assets/svg/Machanical.svg',
                ),
              ],
            ),



            
            // SizedBox(
            //   height: height * 0.010,
            // ),
            Padding(
              padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.020),
              child: Row(
                children: [
                  CategoryWidget(
                    height: height ,
                    width: width ,
                    serviceTitle: 'Permotion and Discount',
                    imgPath: 'assets/svg/PalambringService.svg',
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width*0.020,
                  ),
                  CategoryWidget(
                    height: height ,
                    width: width ,
                    serviceTitle: 'Energy Services ',
                    imgPath: 'assets/svg/services.svg',
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width*0.050,
                  ),
                  CategoryWidget(
                    height: height ,
                    width: width ,
                    serviceTitle: 'Electronic Appliance Repair Services ',
                    imgPath: 'assets/svg/electronic.svg',
                  ),

                ],
              ),
            ),
            SizedBox(
              height: height * 0.020,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.030),
              child: Row(
                children: [
                  Text(
                    'Covid Service',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            SizedBox(
              height: height * 0.020,
            ),
            Padding(
              padding: EdgeInsets.only(left: width * 0.020),
              child: Row(
                children: [
                  CategoryWidget(
                    height: height ,
                    width: width ,
                    serviceTitle: 'Disinfecting and pest control',
                    imgPath: 'assets/svg/pestcontrol.svg',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.005,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.030),
              child: Row(
                children: [
                  Text(
                    'Housekeeping or Domestic Service',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            SizedBox(
              height: height * 0.020,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CategoryWidget(
                  height: height ,
                  width: width ,
                  serviceTitle: 'Cleaning Service',
                  imgPath: 'assets/svg/cleaning.svg',
                ),
                CategoryWidget(
                  height: height ,
                  width: width ,
                  serviceTitle: 'Cooking',
                  imgPath: 'assets/svg/cooking.svg',
                ),
                Padding(
                  padding: EdgeInsets.only(left: 4),
                  child: CategoryWidget(
                    height: height ,
                    width: width ,
                    serviceTitle: 'Washing and Ironing',
                    imgPath: 'assets/svg/cooking.svg',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 3),
                  child: CategoryWidget(
                    height: height ,
                    width: width ,
                    serviceTitle: 'Shifting and Moving',
                    imgPath: 'assets/svg/shifting.svg',
                  ),
                )
              ],
            ),
            
            Padding(
              padding: EdgeInsets.only(left: width * 0.030),
              child: Row(
                children: [
                  CategoryWidget(
                    height: height ,
                    width: width ,
                    serviceTitle: 'Educational Services',
                    imgPath: 'assets/svg/EducationalServise.svg',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.020,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.030),
              child: Row(
                children: [
                  Text(
                    'Security Service',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            SizedBox(
              height: height * 0.020,
            ),
            Padding(
              padding: EdgeInsets.only(left: width * 0.030),
              child: Row(
                children: [
                  CategoryWidget(
                    height: height ,
                    width: width ,
                    serviceTitle: 'CCTV Surveillance Service',
                    imgPath: 'assets/svg/cctv.svg',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
