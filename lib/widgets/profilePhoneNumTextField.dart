// ignore_for_file: file_names, prefer_const_constructors

import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:frensoo_the_handyman_app/common/appColors.dart';
import 'package:frensoo_the_handyman_app/common/appStyles.dart';
import 'package:frensoo_the_handyman_app/common/logUtil.dart';
import 'package:get/get.dart';

class ProfileNumTextFormField extends StatefulWidget {
  const ProfileNumTextFormField({Key? key}) : super(key: key);

  @override
  State<ProfileNumTextFormField> createState() =>
      _ProfileNumTextFormFieldState();
}

class _ProfileNumTextFormFieldState extends State<ProfileNumTextFormField> {
  @override
  Widget build(BuildContext context) {
    String countryCode = '+92';
    var height = Get.height;
    var width = Get.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Mobile Number *',
          style: AppTextStyles.smallTitleBlue,
        ),
        SizedBox(
          height: 6,
        ),
        Container(
          height: height * 0.06,
          width: width,

          //color: AppColors.blue.withOpacity(0.1),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 1),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    border: Border.all(color: AppColors.blue),
                    borderRadius: BorderRadius.all(
                      Radius.circular(2),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.lightGreyColor,
                        offset: Offset(-2, 2),
                        spreadRadius: 2,
                        blurRadius: 2,
                      ),
                      BoxShadow(
                        color: AppColors.lightGreyColor,
                        offset: Offset(2, -2),
                        spreadRadius: 2,
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: CountryCodePicker(
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
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(2),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.lightGreyColor,
                        offset: Offset(-2, 2),
                        spreadRadius: 2,
                        blurRadius: 2,
                      ),
                      BoxShadow(
                        color: AppColors.lightGreyColor,
                        offset: Offset(2, -2),
                        spreadRadius: 2,
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: TextFormField(
                    // controller: _provider.phoneCont,
                    textAlign: TextAlign.left,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      isDense: false,

                      contentPadding: EdgeInsets.symmetric(
                          horizontal: width * 0.030, vertical: 0),
                      enabledBorder: const OutlineInputBorder(
                        // width: 0.0 produces a thin "hairline" border

                        borderSide: BorderSide(color: AppColors.blue, width: 1),

                        borderRadius: BorderRadius.all(
                          Radius.circular(2),
                        ),
                      ),
                      // hintText: 'Mobile Number',
                      hintStyle: TextStyle(
                        fontSize: 14,
                        letterSpacing: 0.5,
                        color: Colors.black54,
                        fontWeight: FontWeight.w300,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(2),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
