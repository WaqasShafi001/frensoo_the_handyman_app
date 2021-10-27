
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:frensoo_the_handyman_app/common/appColors.dart';
import 'package:frensoo_the_handyman_app/common/appStyles.dart';

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
                      style: TextStyle(color: AppColors.orange, fontSize: 12)),
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
                            style:
                                TextStyle(color: AppColors.blue, fontSize: 11),
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



class CategoryWidget extends StatelessWidget {
  final double height;
  final double width;
  final String? imgPath;
  final String? serviceTitle;

  const CategoryWidget(
      {Key? key,
      required this.height,
      required this.width,
      this.imgPath,
      this.serviceTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.15,
      width: width * 0.21,
      //color: Colors.amber,

      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            '$imgPath',
            height: MediaQuery.of(context).size.height * 0.07,
          ),
          SizedBox(
            height: height * 0.0150,
          ),
          Text(
            '$serviceTitle',
            textAlign: TextAlign.center,
            style: AppTextStyles.smallTitle
                .copyWith(fontSize: 10, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}

