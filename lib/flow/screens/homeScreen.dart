// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:frensoo_the_handyman_app/common/appColors.dart';
import 'package:frensoo_the_handyman_app/common/appStyles.dart';
import 'package:frensoo_the_handyman_app/widgets/searchTextField.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;
    return Scaffold(
      backgroundColor: AppColors.bgColor,
        body: SingleChildScrollView(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            SearchTextField(),
             SizedBox(
              height: 10,
            ),
            Container(
              height: height,
              width: width,
              child: ListView(
                children: [
                  SizedBox(
                    height: height * 0.18,
                    width: width * 0.7,
                    child: Center(
                      child: Image.asset('assets/svg/home1stadd.png',
                          width: width * 0.9),
                    ),
                  ),
                   SizedBox(
              height: 5,
            ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.050),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Categories and Services',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'See All',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 11),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.020,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            height: height * 0.13,
                            width: width * 0.23,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  'assets/svg/AirConditionService.svg',
                                  height: height * 0.07,
                                ),
                                Text(
                                  'Air Conditioning Service',
                                  textAlign: TextAlign.center,
                                  style: AppTextStyles.smallTitle.copyWith(
                                    fontSize: 11,
                                  ),
                                ),
                              ],
                            )),
                        Container(
                            height: height * 0.13,
                            width: width * 0.23,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  'assets/svg/EducationalServise.svg',
                                  height: height * 0.07,
                                ),
                                Text(
                                  'Electrical Service',
                                  textAlign: TextAlign.center,
                                  style: AppTextStyles.smallTitle.copyWith(
                                    fontSize: 11,
                                  ),
                                ),
                              ],
                            )),
                        Container(
                            height: height * 0.13,
                            width: width * 0.25,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  'assets/svg/WoodWork.svg',
                                  height: height * 0.07,
                                ),
                                Text(
                                  'Woodwork and Carpenter Service',
                                  textAlign: TextAlign.center,
                                  style: AppTextStyles.smallTitle.copyWith(
                                    fontSize: 11,
                                  ),
                                ),
                              ],
                            )),
                        Container(
                            height: height * 0.13,
                            width: width * 0.25,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  'assets/svg/MachanicalService.svg',
                                  height: height * 0.07,
                                ),
                                Text(
                                  'Auto Machanical Service',
                                  textAlign: TextAlign.center,
                                  style: AppTextStyles.smallTitle.copyWith(
                                    fontSize: 11,
                                  ),
                                ),
                              ],
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.020,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            height: height * 0.13,
                            width: width * 0.23,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  'assets/svg/PalambringService.svg',
                                  height: height * 0.07,
                                ),
                                Text(
                                  'Plumbing Service',
                                  textAlign: TextAlign.center,
                                  style: AppTextStyles.smallTitle.copyWith(
                                    fontSize: 11,
                                  ),
                                ),
                              ],
                            )),
                        Container(
                            height: height * 0.13,
                            width: width * 0.23,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  'assets/svg/CleaningService.svg',
                                  height: height * 0.07,
                                ),
                                Text(
                                  'Cleaning Service',
                                  textAlign: TextAlign.center,
                                  style: AppTextStyles.smallTitle.copyWith(
                                    fontSize: 11,
                                  ),
                                ),
                              ],
                            )),
                        Container(
                            height: height * 0.13,
                            width: width * 0.29,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  'assets/svg/RepearService.svg',
                                  height: height * 0.07,
                                ),
                                Text(
                                  'Electronic Appliance Repair Service',
                                  textAlign: TextAlign.center,
                                  style: AppTextStyles.smallTitle.copyWith(
                                    fontSize: 11,
                                  ),
                                ),
                              ],
                            )),
                        Container(
                            height: height * 0.13,
                            width: width * 0.25,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  'assets/svg/EducationalServise.svg',
                                  height: height * 0.07,
                                ),
                                Text(
                                  'Educational Service',
                                  textAlign: TextAlign.center,
                                  style: AppTextStyles.smallTitle.copyWith(
                                    fontSize: 11,
                                  ),
                                ),
                              ],
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.030,
                  ),
                Container(
                  height: 8,
                  color: Colors.black.withOpacity(0.03),

                ),
                  Padding(
                    padding: EdgeInsets.only(left: width * 0.050, top: 4,bottom: 4,),
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/svg/orders.svg'),
                        SizedBox(
                          width: width * 0.020,
                        ),
                        Text(
                          '300 orders from Lalazer,Rawalpindi',
                          style: TextStyle(fontSize: 10, color: AppColors.blue),
                        )
                      ],
                    ),
                  ),
                   Container(
                  height: 8,
                  color: Colors.black.withOpacity(0.03),
                  
                ),
                  SizedBox(
                    height: height * 0.020,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.050),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Tranding Services',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'See All',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 11),
                        )
                      ],
                    ),
                  ),
                  // SizedBox(
                  //   height: height * 0.002,
                  // ),
                  Container(
                    height: height*0.34,
                    
                    child: ListView.builder(
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      
                      itemBuilder: (context, index) => ServiceCard(
                        height: height,
                        width: width,
                        catImgPath: 'assets/svg/trandingcart.png',
                        noOfOrders: 300,
                        ratings: 5.0,
                        servicePrice: '1500',
                        serviceTitle: 'Woodwork Service',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.70,
                  ),
                  Text('data')
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}

class ServiceCard extends StatelessWidget {
  final String? catImgPath;
  final String? serviceTitle;
  final String? servicePrice;
  final int? noOfOrders;
  final double? ratings;

  const ServiceCard({
    Key? key,
    required this.height,
    required this.width,
    this.catImgPath,
    this.serviceTitle,
    this.servicePrice,
    this.noOfOrders,
    this.ratings,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.all(12),
        height: height * 0.29,
        width: width * 0.65,
        //color: Colors.red,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                offset: Offset(4, 6),
                blurRadius: 5,
                color: Colors.black.withOpacity(0.10)),
          ],
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 2),
              child: Image.asset(catImgPath!),
            ),
            SizedBox(
              height: height * 0.010,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.030),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    serviceTitle!,
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'RS. ${servicePrice!}',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                  )
                ],
              ),
            ),
            SizedBox(
              height: height * 0.002,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.020),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'price varies after inspaction',
                    style: TextStyle(fontSize: 8, fontWeight: FontWeight.w600),
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
                  SvgPicture.asset(
                    'assets/svg/circlecheck.svg',
                    height: height * 0.020,
                  ),
                  Text(
                    ' ${noOfOrders!} Orders',
                    style: TextStyle(color: AppColors.blue, fontSize: 12),
                  )
                ],
              ),
            ),
            SizedBox(
              height: height * 0.010,
            ),
            Padding(
              padding: EdgeInsets.only(left: width * 0.020),
              child: Row(
                children: [
                  Icon(
                    Icons.star_sharp,
                    color: AppColors.orange,
                    size: 20,
                  ),
                  Text(' ${ratings!}',
                      style: TextStyle(color: AppColors.orange,fontSize: 12)),
                  Padding(
                    padding: EdgeInsets.only(left: width * 0.19),
                    child: Row(
                      children: [
                        Container(
                          height: height * 0.035,
                          width: width * 0.30,
                          child: Center(
                              child: Text(
                            ' Add To Cart',
                            style: TextStyle(color: AppColors.blue,fontSize: 11),
                          )),
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: AppColors.blue, width: 2),
                              borderRadius: BorderRadius.circular(10)),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
