// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:frensoo_the_handyman_app/common/appColors.dart';
import 'package:frensoo_the_handyman_app/controllers/otpController.dart';
import 'package:frensoo_the_handyman_app/flow/customNavBar/bottomNavBarView.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OTTPScreenPage extends StatefulWidget {
  final String? otpemail;
  final String? resndotpemail;
  OTTPScreenPage({
    Key? key,
    this.otpemail,
    this.resndotpemail,
  }) : super(key: key);

  @override
  _OTTPScreenPageState createState() => _OTTPScreenPageState();
}

class _OTTPScreenPageState extends State<OTTPScreenPage> {
  //........print the email to ottp screen top page.........//

  var otpController = Get.put(OtpController());

  var onTapRecognizer;
  TextEditingController textEditingController = TextEditingController();

  StreamController<ErrorAnimationType>? errorController;

  bool hasError = false;
  String currentText = "";

  bool isotp = false;

  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    otpController.countDownTimer();
    errorController = StreamController<ErrorAnimationType>();

    super.initState();
  }

  @override
  void dispose() {
    errorController!.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size _screensize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(height: _screensize.height * 0.05),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  'assets/icons/verified_black_24dp.png',
                ),
              ),
              SizedBox(height: _screensize.height * 0.04),
              Center(
                child: Text(
                  'Verify Your Account',
                  style: TextStyle(
                      fontSize: 26,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: _screensize.height * 0.03),
              Text(
                //'Please check your messages & enter the verification code we just sent to you\n${signController.emailController.text}',
                'We have sent a 6 digit code on\n+92 335 2121345',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 15,
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.w600,
                    color: AppColors.blackColor),
              ),
              SizedBox(height: _screensize.height * 0.02),
              Form(
                key: formKey,
                child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 9.0, horizontal: 20),
                    child: PinCodeTextField(
                      length: 6,
                      inputFormatters: <TextInputFormatter>[
                        LengthLimitingTextInputFormatter(6),
                        // WhitelistingTextInputFormatter.digitsOnly,
                        // BlacklistingTextInputFormatter.singleLineFormatter,
                        FilteringTextInputFormatter.digitsOnly,
                        FilteringTextInputFormatter.singleLineFormatter
                      ],
                      animationType: AnimationType.fade,
                      validator: (v) {
                        if (v!.length < 3) {
                          return "";
                        } else {
                          return null;
                        }
                      },
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(5),
                        inactiveColor: Colors.grey.withOpacity(0.05),
                        inactiveFillColor: Colors.grey.withOpacity(0.3),
                        fieldHeight: 60,
                        activeColor: AppColors.blue,
                        fieldWidth: 56,
                        activeFillColor:
                            hasError ? AppColors.blackColor : Colors.white,
                      ),
                      keyboardType: TextInputType.number,
                      animationDuration: Duration(milliseconds: 300),
                      backgroundColor: Colors.transparent,
                      enableActiveFill: true,
                      errorAnimationController: errorController,
                      controller: textEditingController,
                      // onCompleted: (v) {
                      //   myotpController.ottpVerification(
                      //       mEmail: widget.otpemail,
                      //       mOttpcode: textEditingController.text);

                      //   // _provider.setloading(true);
                      //   // ApiUtils.sendOtpAPI(
                      //   //  countrycode: widget.country,
                      //   // number: widget.number,
                      //   // otpcode: textEditingController.text;
                      //   // provider: _provider);
                      // },
                      onChanged: (value) {
                        setState(() {
                          currentText = value;
                        });
                      },
                      appContext: context,
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Resend Code in ',
                    style: TextStyle(fontSize: 15, color: AppColors.greyColor),
                  ),
                  Obx(
                    () => Text(
                      '${otpController.timerCount} sec ',
                      style: TextStyle(color: AppColors.blue),
                    ),
                  ),
                ],
              ),
              SizedBox(height: _screensize.height * 0.02),
              SizedBox(
                height: _screensize.height * 0.06,
                width: _screensize.width * 0.44,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(BottomNavBarView());
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      AppColors.blue,
                    ),
                  ),
                  child: Text(
                    'Verify Code',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: _screensize.width * 0.05,
              vertical: _screensize.height * 0.02,
            ),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Obx(
                () => InkWell(
                  onTap: () => otpController.repeatCountDownTimer(),
                  child: Text(
                    otpController.isTimeCountEnded.value ? 'Resend Code' : '',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
