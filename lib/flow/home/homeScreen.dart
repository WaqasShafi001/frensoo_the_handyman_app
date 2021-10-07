// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GetStorage storage = GetStorage();
    storage.write('userId', '1');
    return Scaffold(
      body: Container(
        child: Center(
          child: Text('HomeScreen'),
        ),
      ),
    );
  }
}
