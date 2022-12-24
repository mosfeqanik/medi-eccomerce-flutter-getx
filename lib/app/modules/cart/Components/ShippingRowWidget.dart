import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShippingRowWidget extends StatelessWidget {
  final String? RowLabel;
  final String? RowDetail;
  final Color? TextColor;

  const ShippingRowWidget(
      {Key? key, this.TextColor, this.RowDetail, this.RowLabel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Text(
            RowLabel!,
            style: TextStyle(fontSize: 20.sp),
          ),
        ),
        SizedBox(width: 10.w),
        Text(
          RowDetail!,
          style: TextStyle(fontSize: 20.sp, color: TextColor!),
        ),
      ],
    );
  }
}
