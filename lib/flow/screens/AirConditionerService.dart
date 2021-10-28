// ignore: file_names
// ignore: file_names
// ignore: file_names
// ignore_for_file: prefer_const_constructors_in_immutables, file_names, prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:frensoo_the_handyman_app/common/appColors.dart';
import 'package:frensoo_the_handyman_app/flow/screens/AcServiceDEtailScreen.dart';
import 'package:frensoo_the_handyman_app/flow/screens/HourlyService.dart';
import 'package:frensoo_the_handyman_app/widgets/appBar.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class AirConditionerServiceScreen extends StatefulWidget {
  AirConditionerServiceScreen({Key? key}) : super(key: key);

  @override
  _AirConditionerServiceScreenState createState() =>
      _AirConditionerServiceScreenState();
}

class _AirConditionerServiceScreenState
    extends State<AirConditionerServiceScreen> {
  List<String> textList = [
    'Service',
    'Repair',
    'Instalation and uninstalations'
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
            child: Stack(
              children: [
                Container(
                    height: height * 0.22,
                    width: width,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            alignment: Alignment.center,
                            fit: BoxFit.fill,
                            image: AssetImage('assets/svg/stackbgimage.png'))),
                    child: Container(
                      height: height * 0.25,
                      //margin: EdgeInsets.only(top: 10),
                      color: Colors.black38.withOpacity(0.25),
                      child: Center(
                          child: Text(
                        'Air Conditioner Service',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      )),
                    )),
              ],
            ),
          ),
          SliverToBoxAdapter(
              child: SizedBox(
            height: 20,
          )),
          SliverToBoxAdapter(
              child: Container(
            height: height * 0.034,
            width: width * 0.040,
            child: ListView.builder(
              padding: EdgeInsets.only(left: 5),
              itemCount: textList.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.only(left: 15),
                child: Container(
                  // width: width * 0.19,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      border: Border.all(color: Colors.black45)),
                  child: Center(
                      child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.030),
                    child: Text(
                      textList[index],
                      style: TextStyle(fontSize: 12),
                    ),
                  )),
                ),
              ),
            ),
          )),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 10,
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
            (context, index) => ServiceCard2(
              height: height,
              width: width,
              catImgPath: 'assets/svg/trandingcart.png',
              noOfOrders: 300,
              ratings: 5.0,
              servicePrice: '1500',
              serviceTitle: 'Woodwork Service',
            ),
            childCount: 4,
          ))
        ],
      ),
    );
  }
}

class ServiceCard2 extends StatelessWidget {
  final String? catImgPath;
  final String? serviceTitle;
  final String? servicePrice;
  final int? noOfOrders;
  final double? ratings;

  const ServiceCard2({
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
      child: GestureDetector(
        onTap: () {
          pushNewScreen(
            context,
            screen: AcServicePage(),
            withNavBar: true, // OPTIONAL VALUE. True by default.
            pageTransitionAnimation: PageTransitionAnimation.cupertino,
          );

          //Get.to(AcServicePage());
        },
        child: Container(
          margin: EdgeInsets.all(12),
          height: height * 0.365,
          width: width,
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
                child: Image.asset(
                  catImgPath!,
                  fit: BoxFit.fitWidth,
                  width: width,
                ),
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
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'RS. ${servicePrice!}',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
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
                  children: const [
                    Text(
                      'price varies after inspaction',
                      style:
                          TextStyle(fontSize: 8, fontWeight: FontWeight.w600),
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
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
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.030),
                      child: Row(
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
                            width: width * 0.070,
                            height: height * 0.030,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10, right: 10),
                            child: Center(
                                child: Text(
                              '1',
                              style: TextStyle(fontSize: 13),
                            )),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Colors.black45)),
                            width: width * 0.11,
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
                              width: width * 0.090,
                              height: height * 0.030),
                        ],
                      ),
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.star_sharp,
                          color: AppColors.orange,
                          size: 20,
                        ),
                        Text(' ${ratings!}',
                            style: TextStyle(
                                color: AppColors.orange, fontSize: 12)),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: width * 0.019),
                      child: Container(
                        height: height * 0.035,
                        width: width * 0.30,
                        child: Center(
                            child: Text(
                          ' Add To Cart',
                          style:
                              TextStyle(color: AppColors.white, fontSize: 11),
                        )),
                        decoration: BoxDecoration(
                            color: AppColors.blue,
                            // border:
                            //     Border.all(color: AppColors.blue, width: 2),

                            borderRadius: BorderRadius.circular(8)),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
