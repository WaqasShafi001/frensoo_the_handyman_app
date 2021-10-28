// ignore: file_names
// ignore_for_file: prefer_const_constructors_in_immutables, file_names, prefer_const_constructors, unused_local_variable, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:frensoo_the_handyman_app/common/appColors.dart';
import 'package:frensoo_the_handyman_app/widgets/appBar.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:percent_indicator/percent_indicator.dart';

class AcServicePage extends StatefulWidget {
  AcServicePage({Key? key}) : super(key: key);

  @override
  _AcServicePageState createState() => _AcServicePageState();
}

class _AcServicePageState extends State<AcServicePage> {
  double value = 3.5;
  List<String> imageProfile = [
    'assets/svg/profilecircle.png',
    'assets/svg/profilecircleman.png',
    'assets/svg/profilecircle.png',
    'assets/svg/profilecircleman.png',
  ];
  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: customAppbar(),
      body: CustomScrollView(
        // ignore: prefer_const_literals_to_create_immutables
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: height * 0.01,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.only( left: 19, right: 19),
              height: height * 0.18,
              width: width * 0.56,
              child: Image.asset(
                'assets/svg/ac.png',
                fit: BoxFit.cover,
              ),
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.circular(12),
              //   color: Colors.white,
              //   boxShadow: [
              //     BoxShadow(
              //       color: Colors.black.withOpacity(0.14),
              //       blurRadius: 5
              //     )
              //   ]
              // ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 10,
            ),
          ),
          SliverToBoxAdapter(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.078),
            child: Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  'Inverter Split AC Gas Refilling',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                )
              ],
            ),
          )),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 28, top: 10),
                      height: height * 0.065,
                      width: width * 0.32,
                    
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                'assets/svg/circlecheck.svg',
                                height: height * 0.020,
                              ),
                              Text(
                                '  300 orders',
                                style: TextStyle(
                                    color: AppColors.blue, fontSize: 12),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 10,
                            ),
                            child: Row(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Icon(
                                  Icons.star,
                                  color: AppColors.yellowcolor,
                                  size: 18,
                                ),
                                Text(
                                  ' 5.0',
                                  style: TextStyle(
                                      color: AppColors.yellowcolor, fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 23, right: 25),
                      child: Container(
                        height: height * 0.035,
                        width: width * 0.33,
                        child: Center(
                            child: Text(
                          ' Add To Cart',
                          style:
                              TextStyle(color: AppColors.white, fontSize: 13),
                        )),
                        decoration: BoxDecoration(
                            color: AppColors.blue,
                            // border:
                            //     Border.all(color: AppColors.blue, width: 2),

                            borderRadius: BorderRadius.circular(8)),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.075),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        'RS. 1500',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6,),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              child: Center(
                                  child: Text(
                                '-',
                                style: TextStyle(fontSize: 18),
                              )),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  border: Border.all(color: Colors.black45)),
                              width: width * 0.060,
                              height: height * 0.030,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 4, right: 4),
                              child: Center(
                                  child: Text(
                                '3',
                                style: TextStyle(fontSize: 13),
                              )),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: Colors.black45)),
                              width: width * 0.105,
                              height: height * 0.030,
                            ),
                            Container(
                                child: Center(
                                    child: Text(
                                  '+',
                                  style: TextStyle(fontSize: 13),
                                )),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    border: Border.all(color: Colors.black45)),
                                width: width * 0.060,
                                height: height * 0.030),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SliverToBoxAdapter(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.072),
            child: Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  'price varies after inspaction',
                  style: TextStyle(fontSize: 9.5, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          )),
          SliverToBoxAdapter(
            child: SizedBox(
              height: height * 0.020,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
                margin: EdgeInsets.only(left: width * 0.068, right: 5),
                height: height * 0.10,
                width: width * 0.70,
                child: Text(
                  'Refilling your AC with a good quality gas for optimal performance.good quality of gas does not over load your AC and is also very benifical for its long lasting performance',
                  style: TextStyle(fontSize: 13),
                )),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(left: width * 0.059),
              child: Text(
                'What does this service include?',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10, left: width * 0.090),
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text('• '),
                      Text(
                        ' price varies after inspaction',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, left: width * 0.090),
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text('• '),
                      Text(
                        ' price varies after inspaction',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, left: width * 0.090),
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text('• '),
                      Text(
                        ' price varies after inspaction',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
              child: SizedBox(
            height: height * 0.030,
          )),
          SliverToBoxAdapter(
            child: Image.asset('assets/svg/technitionman.png'),
          ),
          SliverToBoxAdapter(
              child: SizedBox(
            height: height * 0.030,
          )),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(left: 22),
              child: Text(
                'Reviews and Ratings on this service',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: height * 0.015,
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(left: 18),
              child: Row(
                children: [
                  RatingStars(
                    value: value,
                    onValueChanged: (v) {
                      //
                      setState(() {
                        value = v;
                      });
                    },
                    starBuilder: (index, color) => Icon(
                      Icons.star,
                      color: color,
                      size: 18,
                    ),
                    starCount: 5,
                    starSize: 16,
                    valueLabelColor: const Color(0xff9b9b9b),

                    //valueLabelRadius: 10,
                    //maxValue: 5,

                    starSpacing: 2,

                    maxValueVisibility: false,
                    valueLabelVisibility: false,
                    animationDuration: Duration(milliseconds: 1000),
                    // valueLabelPadding:
                    //     const EdgeInsets.symmetric(vertical: 1, horizontal: 8),
                    // valueLabelMargin: const EdgeInsets.only(right: 8),
                    starOffColor: const Color(0xffe7e8ea),
                    starColor: AppColors.yellowcolor,
                  ),
                  SizedBox(
                    width: width * 0.010,
                  ),
                  Text(
                    '4.5',
                    style: TextStyle(color: AppColors.yellowcolor,),
                  )
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: height * 0.030,
            ),
          ),
          SliverToBoxAdapter(
              child: Container(
            height: height * 0.15,
            width: width * 0.88,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                margin: EdgeInsets.only(left: 18),
                  height: height * 0.22,
                  width: width * 0.12,
                  
                  child: Center(
                    child: Text(
                      '4.5',
                      style: TextStyle(fontSize: 26, color: Colors.blue,fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: width * 0.070),
                  child: Container(
                    height: height * 0.15,
                    width: width * 0.74,
                    
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text('5 ',style: TextStyle(fontWeight:FontWeight.w500,fontSize: 12),),
                            LinearPercentIndicator(
                              width: width * 0.50,
                              lineHeight: 9.0,
                              percent: 0.2, 
                              progressColor: AppColors.yellowcolor,
                            ),
                          ],
                        ),
                        SizedBox(
                        height: 6,),
                        Row(
                          children: [
                            Text('4 ',style: TextStyle(fontWeight:FontWeight.w500,fontSize: 12),),
                            LinearPercentIndicator(
                              width: width * 0.50,
                              lineHeight: 9.0,
                              percent: 0.8,
                              progressColor: AppColors.yellowcolor,
                            ),
                          ],
                        ),
                        SizedBox(
                        height: 6,),
                        Row(
                          children: [
                            Text('3 ',style: TextStyle(fontWeight:FontWeight.w500,fontSize: 12),),
                            LinearPercentIndicator(
                              width: width * 0.50,
                              lineHeight: 9.0,
                              percent: 0.45,
                              progressColor: AppColors.yellowcolor,
                            ),
                          ],
                        ),
                        SizedBox(
                        height: 6,),
                        Row(
                          children: [
                            Text('2 ',style: TextStyle(fontWeight:FontWeight.w400,fontSize: 12),),
                            LinearPercentIndicator(
                              width: width * 0.50,
                              lineHeight: 9.0,
                              percent: 0.55,
                              progressColor: AppColors.yellowcolor,
                            ),
                          ],
                        ),
                        SizedBox(
                        height: 6,),
                        Row(
                          children: [
                            Text('1 ',style: TextStyle(fontWeight:FontWeight.w400,fontSize: 12),),
                            LinearPercentIndicator(
                              width: width * 0.50,
                              lineHeight: 9.0,
                              percent: 0.4,
                              progressColor: AppColors.yellowcolor,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
          SliverToBoxAdapter(
            child: SizedBox(
              height: height * 0.020,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Padding(
                padding: EdgeInsets.zero,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.035),
                      child: Row(
                        children: [
                          Container(
                            height: height * 0.080,
                            width: width * 0.14,
                            child: Image.asset(
                              imageProfile[index],
                              fit: BoxFit.contain,
                              //color: Colors.blue,
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(top: 15),
                              height: height * 0.080,
                              width: width * 0.38,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 12),
                                    child: Text(
                                      'Joy Kanvia',
                                      style: TextStyle(
                                          color: AppColors.blackColor,
                                          fontSize: 15),
                                    ),
                                  ),
                                  SizedBox(
                                    height: height * 0.010,
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: width * 0.030),
                                    child: Row(
                                      children: [
                                        RatingStars(
                                          value: value,
                                          onValueChanged: (v) {
                                            //
                                            setState(() {
                                              value = v;
                                            });
                                          },
                                          starBuilder: (index, color) => Icon(
                                            Icons.star,
                                            color: color,
                                            size: 16,
                                          ),
                                          starCount: 5,
                                          starSize: 16,
                                          valueLabelColor:
                                              const Color(0xff9b9b9b),

                                          //valueLabelRadius: 10,
                                          //maxValue: 5,

                                          starSpacing: 3,

                                          maxValueVisibility: false,
                                          valueLabelVisibility: false,
                                          animationDuration:
                                              Duration(milliseconds: 1000),
                                          // valueLabelPadding:
                                          //     const EdgeInsets.symmetric(vertical: 1, horizontal: 8),
                                          // valueLabelMargin: const EdgeInsets.only(right: 8),
                                          starOffColor: const Color(0xffe7e8ea),
                                          starColor: AppColors.yellowcolor,
                                        ),
                                        Text(
                                          ' 4.5',
                                          style: TextStyle(
                                              color: AppColors.yellowcolor,
                                              fontSize: 10),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              )),
                          SizedBox(
                            width: width * 0.020,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 8),
                            child: Text(
                              '08/12/2020',
                              style: TextStyle(
                                  color: AppColors.blackLightColor,
                                  fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: width * 0.18),
                      height: height * 0.050,
                      width: width * 0.75,
                      child: Text(
                        'I love this product, have been buying products from the seller, they are amazing',
                        style: TextStyle(
                            fontSize: 12, color: AppColors.blackLightColor),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: width * 0.33),
                      child: Container(
                        height: 2,
                        width: width * 0.22,
                        color: AppColors.blackLightContainer,
                      ),
                    )
                  ],
                ),
              );
            }, childCount: imageProfile.length),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 40,
            ),
          ),

          

        ],
      ),
    );
  }

  

}
