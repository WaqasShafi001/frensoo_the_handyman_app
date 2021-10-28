// ignore_for_file: file_names, prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:frensoo_the_handyman_app/Global/printLog.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';

double? lat;
double? long;

Future getLocation() async {
  Position? position = await Geolocator.getLastKnownPosition();
  if (position != null) {
    lat = position.latitude;
    long = position.longitude;
  } else {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    lat = position.latitude;
    long = position.longitude;
  }
  printLog('lat = $lat');
  printLog('long = $long');
}

Future gpsService(BuildContext context) async {
  if (!(await Geolocator.isLocationServiceEnabled())) {
    await checkGps(context);
    return null;
  } else {
    return true;
  }
}

Future checkGps(BuildContext context) async {
  if (!(await Geolocator.isLocationServiceEnabled())) {
    if (Theme.of(context).platform == TargetPlatform.android) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Can't get gurrent location"),
              content: Text('Please make sure you enable GPS and try again'),
              actions: <Widget>[
                FlatButton(
                    child: Text('Ok'),
                    onPressed: () {
                      Get.back();
                      // final AndroidIntent intent = AndroidIntent(
                      //     action:
                      //         'android.settings.LOCATION_SOURCE_SETTINGS');
                      // intent.launch();
                    })
              ],
            );
          });
    }
  }
}
