// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:frensoo_the_handyman_app/common/appColors.dart';
import 'package:frensoo_the_handyman_app/common/appStyles.dart';

class InputTextField extends StatelessWidget {
  final String? topLabel;
  const InputTextField({Key? key, this.topLabel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$topLabel *',
          style: AppTextStyles.smallTitleBlue,
        ),
        SizedBox(
          height: 6,
        ),
        DecoratedBox(
          decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.all(Radius.circular(5)),
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
              ]),
          child: TextFormField(
            decoration: InputDecoration(
              isDense: true,
              enabledBorder: const OutlineInputBorder(
                // width: 0.0 produces a thin "hairline" border
                borderSide: BorderSide(color: AppColors.blue, width: 1),

                borderRadius: BorderRadius.all(
                  Radius.circular(2),
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(2),
                ),
              ),
            ),
            keyboardType: TextInputType.name,
            textInputAction: TextInputAction.done,
            textAlignVertical: TextAlignVertical.center,
          ),
        ),
      ],
    );
  }
}
