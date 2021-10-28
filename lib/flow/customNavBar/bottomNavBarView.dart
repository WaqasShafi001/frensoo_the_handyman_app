// ignore_for_file: file_names, prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:frensoo_the_handyman_app/common/appColors.dart';
import 'package:frensoo_the_handyman_app/flow/screens/Catagories.dart';
import 'package:frensoo_the_handyman_app/flow/screens/ProfileScreen.dart';
import 'package:frensoo_the_handyman_app/flow/screens/homeScreen.dart';
import 'package:frensoo_the_handyman_app/widgets/appBar.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

PersistentTabController? bottomcontroller;

class BottomNavBarView extends StatefulWidget {
  const BottomNavBarView({Key? key}) : super(key: key);

  @override
  State<BottomNavBarView> createState() => _BottomNavBarViewState();
}

class _BottomNavBarViewState extends State<BottomNavBarView> {
  bool? _hideNavBar;

  @override
  void initState() {
    super.initState();
    bottomcontroller = PersistentTabController(
      initialIndex: 0,
    );

    _hideNavBar = false;
  }

  List<Widget> _buildScreens() {
    return [
      HomeScreen(),
      Categories(),
      Container(
        child: Center(
          child: Text('3rd screen'),
        ),
      ),
      Container(
        child: Center(
          child: Text('4th screen'),
        ),
      ),
      ProfileScreen(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(
          'assets/svg/homeNav.svg',
          color: AppColors.blue,
        ),
        inactiveIcon: SvgPicture.asset(
          'assets/svg/homeNav.svg',
          color: AppColors.greyColor,
        ),
        title: 'Home',
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(
          'assets/svg/categoriesnav.svg',
          color: AppColors.blue,
        ),
        inactiveIcon: SvgPicture.asset(
          'assets/svg/categoriesnav.svg',
          color: AppColors.greyColor,
        ),
        title: 'Categories',
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(
          'assets/svg/ordersNav.svg',
          color: AppColors.blue,
        ),
        title: 'Orders',
        inactiveIcon: SvgPicture.asset(
          'assets/svg/ordersNav.svg',
          color: AppColors.greyColor,
          //fit: BoxFit.fitWidth,
        ),
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(
          'assets/svg/storenav.svg',
          color: AppColors.blue,
        ),
        title: 'Store',
        inactiveIcon: SvgPicture.asset(
          'assets/svg/storenav.svg',
          color: AppColors.greyColor,
        ),
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(
          'assets/svg/profileNav.svg',
          color: AppColors.blue,
        ),
        title: 'Profile',
        inactiveIcon: SvgPicture.asset(
          'assets/svg/profileNav.svg',
          color: AppColors.greyColor,
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    //GetStorage storage = GetStorage();
    // storage.write('userId', '1');
    var height = Get.height;
    var width = Get.width;
    return Scaffold(
      backgroundColor: AppColors.white,
      //appBar: customAppbar(),
      body: PersistentTabView(
        context,
        //....generate global controller and jump second tabe ...........//
        controller: bottomcontroller!,
        //..............................//
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        resizeToAvoidBottomInset: true,
        backgroundColor: AppColors.white,
        handleAndroidBackButtonPress: true,
        stateManagement: false,

        navBarHeight: height * 0.07,
        hideNavigationBarWhenKeyboardShows: true,
        selectedTabScreenContext: (context) {},
        hideNavigationBar: _hideNavBar,
        navBarStyle: NavBarStyle.style6,
        screenTransitionAnimation:
            ScreenTransitionAnimation(animateTabTransition: false),
      ),
    );
  }
}
