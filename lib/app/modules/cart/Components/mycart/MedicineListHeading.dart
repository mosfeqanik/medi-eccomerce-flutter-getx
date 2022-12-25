import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/app_strings.dart';
import '../../../Common_components/ListheadingWidget.dart';
class MedicineListHeading extends StatelessWidget {
  const MedicineListHeading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.only(left: 14.w),
          child: ListheadingWidget(
            Textheading: AppStrings.Type_Item,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 10.w,
            ),
            ListheadingWidget(
              Textheading: AppStrings.QTY,
            ),
            SizedBox(
              width: 30.w,
            ),
            ListheadingWidget(
              Textheading: AppStrings.Price_tk,
            ),
          ],
        ),
      ],
    );
  }
}
