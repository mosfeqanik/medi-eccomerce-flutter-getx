import 'package:flutter/material.dart';

import '../../../../config/theme/theme_service.dart';
import '../../controllers/medicines_controller.dart';

class productNamepart extends StatelessWidget {
  final String? productName;
  final String? productCompanyName;

  const productNamepart({
    Key? key,
    this.productName,
    this.productCompanyName,
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
          productName!,
          style: ThemeService.ProductHeadingTextStyle,
        ),
        Text(
          productCompanyName!,
          style: ThemeService.companyNameStyle,
        )
      ],
    );
  }
}
