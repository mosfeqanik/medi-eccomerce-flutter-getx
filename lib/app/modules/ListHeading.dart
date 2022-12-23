import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../config/theme/theme_service.dart';

class ListHeading extends StatelessWidget {
  String? textHeading;

  ListHeading({Key? key, this.textHeading}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.w),
      child: Text(
        textHeading!,
        style: ThemeService.ListHeadingTextStyle,
      ),
    );
  }
}
