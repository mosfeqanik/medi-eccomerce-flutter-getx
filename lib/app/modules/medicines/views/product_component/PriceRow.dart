import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/theme/theme_service.dart';
import '../../controllers/medicines_controller.dart';

class PriceRow extends StatelessWidget {
  String? productPrice;
  String? productRegularPrice;
  final MedicinesController controller;

  PriceRow(
      {Key? key,
        this.productPrice,
        this.productRegularPrice,
        required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          productPrice!,
          style: ThemeService.ProductpriceStyle,
        ),
        SizedBox(
          width: 10.w,
        ),
        Text(
          productRegularPrice!,
          style: ThemeService.lineThroughProductPriceStyle,
        )
      ],
    );
  }
}