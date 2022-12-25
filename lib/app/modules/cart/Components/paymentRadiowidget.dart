import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/theme/theme_service.dart';

class paymentRadiowidget extends StatelessWidget {
  String? imagePath;
  String? paymentMethodName;

  paymentRadiowidget({
    Key? key,
    this.imagePath,
    this.paymentMethodName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          imagePath!,
          width: 30.w,
        ),
        SizedBox(width: 10.w),
        Text(
          paymentMethodName!,
          style: ThemeService.PaymentMethodTittle,
        )
      ],
    );
  }
}
