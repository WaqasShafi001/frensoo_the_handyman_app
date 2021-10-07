// ignore_for_file: file_names, prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:frensoo_the_handyman_app/common/appColors.dart';
import 'package:frensoo_the_handyman_app/widgets/appBar.dart';
import 'package:get_storage/get_storage.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //GetStorage storage = GetStorage();
    // storage.write('userId', '1');
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: customAppbar(),
      body: LayoutBuilder(
        builder: (context, constraints) => Container(
          height: constraints.maxHeight,
          width: constraints.maxWidth,
          child: Center(
            child: Text(
              'HomeScreen',
            ),
          ),
        ),
      ),
    );
  }
}
