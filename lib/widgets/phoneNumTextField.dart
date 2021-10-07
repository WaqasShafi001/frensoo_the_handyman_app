// ignore_for_file: file_names, prefer_const_constructors

import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:frensoo_the_handyman_app/common/appColors.dart';
import 'package:frensoo_the_handyman_app/common/logUtil.dart';
import 'package:get/get.dart';

class PhoneNumTextField extends StatefulWidget {
  const PhoneNumTextField({Key? key}) : super(key: key);

  @override
  State<PhoneNumTextField> createState() => _PhoneNumTextFieldState();
}

class _PhoneNumTextFieldState extends State<PhoneNumTextField> {
  String countryCode = '+92';

  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;
    return Center(
      child: Card(
        elevation: 10,
        shadowColor: AppColors.greyColor.withOpacity(0.15),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Container(
          height: height * 0.065,
          width: width * 0.9,
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            boxShadow: [
              BoxShadow(
                color: AppColors.greyColor.withOpacity(0.15),
                blurRadius: 20.0,
              ),
            ],
          ),
          child: Row(
            children: [
              CountryCodePicker(
                padding: EdgeInsets.symmetric(horizontal: 0),
                hideMainText: false,
                alignLeft: false,
                onChanged: (e) {
                  printlog('${e.dialCode}');
                  setState(() {
                    countryCode = e.dialCode!;
                  });
                },
                initialSelection: countryCode,
                showCountryOnly: false,
                showDropDownButton: true,
                showOnlyCountryWhenClosed: false,
                favorite: const ['+92', 'PK'],
              ),
              Container(
                width: 1,
                height: height * 0.045,
                color: AppColors.greyColor,
              ),
              Expanded(
                child: TextFormField(
                  // controller: _provider.phoneCont,
                  textAlign: TextAlign.left,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: width * 0.030),
                      border: InputBorder.none,
                      hintText: 'Mobile Number',
                      hintStyle: TextStyle(
                          fontSize: 14,
                          letterSpacing: 0.5,
                          color: Colors.black54,
                          fontWeight: FontWeight.w300)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
