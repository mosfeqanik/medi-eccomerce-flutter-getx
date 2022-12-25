import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/theme/AppColors.dart';
import '../../../../config/theme/theme_service.dart';
import '../../../../utils/app_strings.dart';
import '../../controllers/medicines_controller.dart';

class productDescription extends StatelessWidget {
  const productDescription({
    Key? key,
    required this.controller,
  }) : super(key: key);
  final MedicinesController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.Short_Description,
          style: ThemeService.DescriptionStyle,
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          AppStrings.Product_Description,
          style: TextStyle(color: AppColors.secondaryColor),
        )
      ],
    );
  }
}