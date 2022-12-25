import 'package:flutter/material.dart';

import '../../../../config/theme/AppColors.dart';
import '../../../../utils/app_strings.dart';
import '../../controllers/cart_controller.dart';
import 'package:get/get.dart';
class TeamsAndCondition extends StatelessWidget {
  const TeamsAndCondition({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final CartController controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Obx(() {
          return Checkbox(
            value: controller.TermsCheckedBox.value,
            onChanged: (value) {
              controller.TermsCheckedBox.value = value!;
            },
          );
        }),
        RichText(
          text: TextSpan(
            text: AppStrings.I_Agree_with,
            style: TextStyle(color: AppColors.secondaryColor),
            children: <TextSpan>[
              TextSpan(
                text: AppStrings.Terms_Conditions,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: AppColors.primaryColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}