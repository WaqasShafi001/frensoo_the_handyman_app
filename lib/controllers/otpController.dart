// ignore_for_file: file_names, prefer_const_constructors

import 'package:get/get.dart';

class OtpController extends GetxController {
  var timerCount = 60.obs;
  var isTimeCountEnded = false.obs;

  countDownTimer() async {
    for (int x = timerCount.value; x > 0; x--) {
      await Future.delayed(Duration(seconds: 1)).then((_) {
        timerCount -= 1;
      });
    }

    isTimeCountEnded.value = true;
  }

  repeatCountDownTimer() {
    if (isTimeCountEnded.value) {
      isTimeCountEnded.value = false;
      timerCount.value = 60;
      countDownTimer();
    }
  }
}
