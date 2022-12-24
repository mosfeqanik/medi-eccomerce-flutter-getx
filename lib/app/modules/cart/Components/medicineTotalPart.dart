import 'package:flutter/material.dart';

import '../../../config/theme/AppColors.dart';
class medicineTotalPart extends StatelessWidget {
  String? label;
  String? totalPrice;

  medicineTotalPart({Key? key, this.label, this.totalPrice}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label!,
          style: TextStyle(color: AppColors.secondaryColor),
        ),
        Text(
          totalPrice!,
          style: TextStyle(color: AppColors.secondaryColor),
        ),
      ],
    );
  }
}