// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:frensoo_the_handyman_app/CustomUiWidgets/CustomUi.dart';
import 'package:frensoo_the_handyman_app/common/appColors.dart';
import 'package:frensoo_the_handyman_app/common/appStyles.dart';
import 'package:frensoo_the_handyman_app/flow/customNavBar/bottomNavBarView.dart';
import 'package:frensoo_the_handyman_app/flow/screens/Catagories.dart';
import 'package:frensoo_the_handyman_app/widgets/appBar.dart';
import 'package:frensoo_the_handyman_app/widgets/searchTextField.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey _sliderKey = GlobalKey();

  final GlobalKey _sliderKey2 = GlobalKey();

  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;
    return Scaffold(
        appBar: customAppbar(),
        backgroundColor: AppColors.white,
        body: SingleChildScrollView(
          // dragStartBehavior: DragStartBehavior.start,
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SearchTextField(),
              SizedBox(
                height: 5,
              ),
              Container(
                height: height,
                width: width,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  children: [
                    Container(
                      height: height * 0.155,
                      width: width * 0.68,
                      child: CarouselSlider.builder(
                          key: _sliderKey,
                          enableAutoSlider: true,
                          autoSliderDelay: Duration(milliseconds: 3000),
                          autoSliderTransitionTime: Duration(seconds: 2),
                          //autoSliderDelay: Duration(seconds: 1),
                          unlimitedMode: true,
                          slideBuilder: (index) {
                            return Container(
                              alignment: Alignment.center,
                              color: Colors.transparent,
                              child: Image.asset(
                                'assets/svg/home1stadd.png',
                              ),
                            );
                          },
                          // slideTransform: ,
                          slideIndicator: CircularSlideIndicator(
                            padding: EdgeInsets.only(bottom: 4),
                            indicatorBorderWidth: 0,
                            indicatorRadius: 4,
                            currentIndicatorColor: AppColors.blue,
                            indicatorBackgroundColor: AppColors.greyColor,
                          ),
                          itemCount: 3),
                    ),
                    // Center(
                    //   child: Image.asset('assets/svg/home1stadd.png',
                    //       width: width * 0.9),
                    // ),

                    SizedBox(
                      height: 15,
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
                          GestureDetector(
                            onTap: () {
                              pushNewScreen(
                                context,
                                screen: Categories(),
                                withNavBar: true,
                                // OPTIONAL VALUE. True by default.
                                pageTransitionAnimation:
                                    PageTransitionAnimation.cupertino,
                              );

                              // bottomcontroller!.jumpToTab(1);
                            },
                            child: Text(
                              'See All',
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 11),
                            ),
                          )
                        ],
                      ),
                    ),

                    // Padding(
                    //   padding: const EdgeInsets.symmetric(horizontal: 0),
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //     children: [
                    //       Container(
                    //           height: height * 0.13,
                    //           width: width * 0.23,
                    //           child: Column(
                    //             mainAxisAlignment:
                    //                 MainAxisAlignment.spaceBetween,
                    //             crossAxisAlignment: CrossAxisAlignment.center,
                    //             children: [
                    //               SvgPicture.asset(
                    //                 'assets/svg/AirConditionService.svg',
                    //                 height: height * 0.07,
                    //               ),
                    //               Text(
                    //                 'Air Conditioning Service',
                    //                 textAlign: TextAlign.center,
                    //                 style: AppTextStyles.smallTitle.copyWith(
                    //                   fontSize: 11,
                    //                 ),
                    //               ),
                    //             ],
                    //           )),

                    //       Container(
                    //           height: height * 0.13,
                    //           width: width * 0.23,
                    //           child: Column(
                    //             mainAxisAlignment:
                    //                 MainAxisAlignment.spaceBetween,
                    //             crossAxisAlignment: CrossAxisAlignment.center,
                    //             children: [
                    //               SvgPicture.asset(
                    //                 'assets/svg/EducationalServise.svg',
                    //                 height: height * 0.07,
                    //               ),
                    //               Text(
                    //                 'Electrical Service',
                    //                 textAlign: TextAlign.center,
                    //                 style: AppTextStyles.smallTitle.copyWith(
                    //                   fontSize: 11,
                    //                 ),
                    //               ),
                    //             ],
                    //           )),

                    //       Container(
                    //         height: height * 0.13,
                    //         width: width * 0.25,
                    //         child: Column(
                    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //           crossAxisAlignment: CrossAxisAlignment.center,
                    //           children: [
                    //             SvgPicture.asset(
                    //               'assets/svg/WoodWork.svg',
                    //               height: height * 0.07,
                    //             ),
                    //             Text(
                    //               'Woodwork and Carpenter Service',
                    //               textAlign: TextAlign.center,
                    //               style: AppTextStyles.smallTitle.copyWith(
                    //                 fontSize: 11,
                    //               ),
                    //             ),
                    //           ],
                    //         ),
                    //       ),
                    //       Container(
                    //           height: height * 0.13,
                    //           width: width * 0.25,
                    //           child: Column(
                    //             mainAxisAlignment:
                    //                 MainAxisAlignment.spaceBetween,
                    //             crossAxisAlignment: CrossAxisAlignment.center,
                    //             children: [
                    //               SvgPicture.asset(
                    //                 'assets/svg/MachanicalService.svg',
                    //                 height: height * 0.07,
                    //               ),
                    //               Text(
                    //                 'Auto Machanical Service',
                    //                 textAlign: TextAlign.center,
                    //                 style: AppTextStyles.smallTitle.copyWith(
                    //                   fontSize: 11,
                    //                 ),
                    //               ),
                    //             ],
                    //           )),
                    //     ],
                    //   ),
                    // ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.030,
                    ),

                    Padding(
                      padding: EdgeInsets.only(left: width * 0.015),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CategoryWidget(
                            height: height,
                            width: width,
                            serviceTitle: 'Air Conditioning Service',
                            imgPath: 'assets/svg/AirConditionService.svg',
                          ),
                          CategoryWidget(
                            height: height,
                            width: width,
                            serviceTitle: 'Electrical Service',
                            imgPath: 'assets/svg/electric.svg',
                          ),
                          CategoryWidget(
                            height: height,
                            width: width,
                            serviceTitle: 'Woodwork and Carpenter Service',
                            imgPath: 'assets/svg/WoodWork.svg',
                          ),
                          CategoryWidget(
                            height: height,
                            width: width,
                            serviceTitle: 'Auto MAchanical Services',
                            imgPath: 'assets/svg/Machanical.svg',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.005,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 6),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CategoryWidget(
                            height: height,
                            width: width,
                            serviceTitle: 'Plumbing Service',
                            imgPath: 'assets/svg/PalambringService.svg',
                          ),
                          CategoryWidget(
                            height: height,
                            width: width,
                            serviceTitle: 'Cleaning Service',
                            imgPath: 'assets/svg/CleaningService.svg',
                          ),
                          CategoryWidget(
                            height: height,
                            width: width,
                            serviceTitle: 'Electronic Appliance Repair Service',
                            imgPath: 'assets/svg/RepearService.svg',
                          ),
                          CategoryWidget(
                            height: height,
                            width: width,
                            serviceTitle: 'Educational Services',
                            imgPath: 'assets/svg/EducationalServise.svg',
                          ),
                        ],
                      ),
                    ),

                    // Padding(
                    //   padding: const EdgeInsets.symmetric(horizontal: 0),
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //     children: [
                    //       Container(
                    //           height: height * 0.13,
                    //           width: width * 0.23,
                    //           child: Column(
                    //             mainAxisAlignment:
                    //                 MainAxisAlignment.spaceBetween,
                    //             crossAxisAlignment: CrossAxisAlignment.center,
                    //             children: [
                    //               SvgPicture.asset(
                    //                 'assets/svg/PalambringService.svg',
                    //                 height: height * 0.07,
                    //               ),
                    //               Text(
                    //                 'Plumbing Service',
                    //                 textAlign: TextAlign.center,
                    //                 style: AppTextStyles.smallTitle.copyWith(
                    //                   fontSize: 11,
                    //                 ),
                    //               ),
                    //             ],
                    //           )),
                    //       Container(
                    //           height: height * 0.13,
                    //           width: width * 0.23,
                    //           child: Column(
                    //             mainAxisAlignment:
                    //                 MainAxisAlignment.spaceBetween,
                    //             crossAxisAlignment: CrossAxisAlignment.center,
                    //             children: [
                    //               SvgPicture.asset(
                    //                 'assets/svg/CleaningService.svg',
                    //                 height: height * 0.07,
                    //               ),
                    //               Text(
                    //                 'Cleaning Service',
                    //                 textAlign: TextAlign.center,
                    //                 style: AppTextStyles.smallTitle.copyWith(
                    //                   fontSize: 11,
                    //                 ),
                    //               ),
                    //             ],
                    //           )),
                    //       Container(
                    //           height: height * 0.13,
                    //           width: width * 0.29,
                    //           child: Column(
                    //             mainAxisAlignment:
                    //                 MainAxisAlignment.spaceBetween,
                    //             crossAxisAlignment: CrossAxisAlignment.center,
                    //             children: [
                    //               SvgPicture.asset(
                    //                 'assets/svg/RepearService.svg',
                    //                 height: height * 0.07,
                    //               ),
                    //               Text(
                    //                 'Electronic Appliance Repair Service',
                    //                 textAlign: TextAlign.center,
                    //                 style: AppTextStyles.smallTitle.copyWith(
                    //                   fontSize: 11,
                    //                 ),
                    //               ),
                    //             ],
                    //           )),
                    //       Container(
                    //           height: height * 0.13,
                    //           width: width * 0.25,
                    //           child: Column(
                    //             mainAxisAlignment:
                    //                 MainAxisAlignment.spaceBetween,
                    //             crossAxisAlignment: CrossAxisAlignment.center,
                    //             children: [
                    //               SvgPicture.asset(
                    //                 'assets/svg/EducationalServise.svg',
                    //                 height: height * 0.07,
                    //               ),
                    //               Text(
                    //                 'Educational Service',
                    //                 textAlign: TextAlign.center,
                    //                 style: AppTextStyles.smallTitle.copyWith(
                    //                   fontSize: 11,
                    //                 ),
                    //               ),
                    //             ],
                    //           )),
                    //     ],
                    //   ),
                    // ),

                    SizedBox(
                      height: height * 0.030,
                    ),

                    Container(
                      height: 8,
                      color: Colors.black.withOpacity(0.03),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: width * 0.050,
                        top: 4,
                        bottom: 4,
                      ),
                      child: Row(
                        children: [
                          Image.asset('assets/svg/order.png'),
                          SizedBox(
                            width: width * 0.020,
                          ),
                          Text(
                            '300 orders from Lalazer,Rawalpindi',
                            style:
                                TextStyle(fontSize: 10, color: AppColors.blue),
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
                      height: height * 0.34,
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

                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      height: height * 0.15,
                      width: width * 0.78,
                      child: Center(
                          child: Container(
                              margin: EdgeInsets.only(left: 18, right: 15),
                              child:
                                  SvgPicture.asset('assets/svg/covid19.svg'))),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.14),
                              offset: Offset(2, 4),
                              blurRadius: 4),
                        ],
                      ),
                    ),

                    SizedBox(height: 15),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.050),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Promotions and Discounts',
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
                    //   height: 5,
                    // ),
                    Container(
                      height: height * 0.32,
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
                      height: 5,
                    ),

                    // Container(
                    //   margin: EdgeInsets.only(left: 10,right: 10),
                    //   height: height * 0.15,
                    //   width: width * 0.78,
                    //   child: Center(
                    //       child: Container(
                    //         margin: EdgeInsets.only(left: 18,right: 15),
                    //         child: Image.asset('assets/svg/hbl.png'))),
                    //   decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.circular(12),
                    //     color: Colors.white,
                    //     boxShadow: [
                    //       BoxShadow(
                    //           color: Colors.black.withOpacity(0.14),
                    //           offset: Offset(2, 4),
                    //           blurRadius: 4),
                    //     ],
                    //   ),
                    // ),

                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      height: height * 0.16,
                      width: width * 0.78,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.14),
                              offset: Offset(2, 4),
                              blurRadius: 4),
                        ],
                      ),
                      child: CarouselSlider.builder(
                          key: _sliderKey2,
                          enableAutoSlider: true,
                          autoSliderDelay: Duration(milliseconds: 3000),
                          autoSliderTransitionTime: Duration(seconds: 2),
                          //autoSliderDelay: Duration(seconds: 1),
                          unlimitedMode: true,
                          slideBuilder: (index) {
                            return Container(
                              alignment: Alignment.center,
                              color: Colors.transparent,
                              child: Image.asset(
                                'assets/svg/hbl.png',
                              ),
                            );
                          },
                          // slideTransform: ,
                          slideIndicator: CircularSlideIndicator(
                            padding: EdgeInsets.only(bottom: 4),
                            indicatorBorderWidth: 0,
                            indicatorRadius: 4,
                            currentIndicatorColor: AppColors.blue,
                            indicatorBackgroundColor: AppColors.greyColor,
                          ),
                          itemCount: 3),
                    ),

                    SizedBox(
                      height: height * 0.3,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
