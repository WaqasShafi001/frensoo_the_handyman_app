// ignore: file_names
// ignore_for_file: file_names, prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace, unnecessary_null_comparison

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:frensoo_the_handyman_app/common/appColors.dart';
import 'package:frensoo_the_handyman_app/common/appStyles.dart';
import 'package:frensoo_the_handyman_app/widgets/appBar.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class HourlyService extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  HourlyService({Key? key}) : super(key: key);

  @override
  _HourlyState createState() => _HourlyState();
}

class _HourlyState extends State<HourlyService> {
  List<String> textItem = ['Cleaning', 'Washing', 'Ironing', 'Everything'];

  int selectedIndex = 0;
  bool changeColor = false;
  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;
    return Scaffold(
     // appBar: customAppbar(),
     backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Stack(
              children: [
                Container(
                  height: height * 0.22,
                  width: width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          alignment: Alignment.center,
                          fit: BoxFit.fill,
                          image: AssetImage(
                            'assets/svg/hourlybg.png',
                          ))),
                  child: Container(
                    height: height * 0.20,
                    width: width,
                    color: Colors.black12.withOpacity(0.30),
                    child: Center(
                        child: Text(
                      'Hourly Services',
                      style: TextStyle(fontSize: 20, color: Colors.white70),
                    )),
                  ),
                )
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: height * 0.030,
            ),
          ),
          SliverToBoxAdapter(
            child: GestureDetector(
              onTap: () {
                
              },
              child: 
              
              Container(
                height: height * 0.033,
                width: width * 0.040,
                child: ListView.builder(
                  itemCount: textItem.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.only(left: width * 0.030),
                    child:
                     Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          border: Border.all( 
                          //  color: Colors.black45,
                          color: selectedIndex != null && selectedIndex == index ? Colors.red : Colors.blue,
                          )),
                      child: Center(
                          child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: width * 0.030),
                        child: Text(
                          textItem[index],
                          style: TextStyle(fontSize: 13),
                        ),
                      )),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 5,
            ),
          ),
          SliverList(delegate: SliverChildBuilderDelegate(
            
            (context,index) {
            return   Container(
            margin: EdgeInsets.all(10),
            height: height * 0.335,
            width: width * 0.81,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      offset: Offset(2, 4),
                      blurRadius: 5,
                      color: Colors.black12.withOpacity(0.15))
                ]),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 12, left: 15),
                      width: width * 0.5,
                      height: height * 0.18,
                      color: Colors.transparent,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '2 Hours',
                            style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              SvgPicture.asset('assets/svg/circlecheck.svg',height: height*0.020,),
                              Text('  300 orders',style: TextStyle(color: AppColors.blue,fontSize: 12),),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.star,color: Colors.yellow,size: 18,),
                              Text(' 5.0',style: TextStyle(color: Colors.yellow,fontSize: 12),),
                            ],
                          ),
                          Row(
                            children: [
                              Text('RS. 500',style: TextStyle(fontWeight: FontWeight.w600,color: Colors.black87,fontSize: 16),),
                              Text(' (120 min)',style: TextStyle(color: AppColors.blackLightColor,fontSize: 14),),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      width: width * 0.35,
                      height: height * 0.23,
                      color: Colors.transparent,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Image.asset(
                            'assets/svg/cleaning2.png',
                            fit: BoxFit.fitHeight,
                            alignment: Alignment.topCenter,
                          ),
                          
                          Padding(
                            padding: const EdgeInsets.only(top: 0, right: 8),
                            child:
                             Container(
                              height: height * 0.035,
                              width: width * 0.25,
                              child: Center(
                                  child: Text(
                                ' Add To Cart',
                                style: TextStyle(
                                    color: AppColors.white, fontSize: 11),
                              )),
                              decoration: BoxDecoration(
                                  color: AppColors.blue,
                                  // border:
                                  //     Border.all(color: AppColors.blue, width: 2),

                                  borderRadius: BorderRadius.circular(8)),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 6, right: 8),
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
                                      border:
                                          Border.all(color: Colors.black45)),
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
                                      border:
                                          Border.all(color: Colors.black45)),
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
                                        border:
                                            Border.all(color: Colors.black45)),
                                    width: width * 0.060,
                                    height: height * 0.030),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Divider(
                    height: 2,
                    color: AppColors.greyColor.withOpacity(0.2),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 12, left: 10),
                  child: Row(
                    children: [Text('• '), Text('RS. 250 per Hour')],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 10),
                  child: Row(
                    children: [
                      Text('• '),
                      Text('Ideal for Studio / I BHQ Apartments'),
                    ],
                  ),
                )
              ],
            ),
          );
          },
          childCount: 3,
          ))
        ],
      ),
    );
  }
}
