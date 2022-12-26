import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/theme/AppColors.dart';
import '../../config/theme/theme_service.dart';
import '../../utils/app_strings.dart';
import 'ButtonWidget.dart';
import '../cart/Components/mycart/ApplyPromoCode.dart';

class BottomPart extends StatelessWidget {
  final VoidCallback ShowApplyPromofunc;
  final VoidCallback BtnFunc;
  final bool? showApplyPromoCode;
  final String? Totalprice;
  final String? BtnText;

  const BottomPart(
      {Key? key,
      required this.BtnFunc,
      this.Totalprice,
        this.BtnText,
      this.showApplyPromoCode,
      required this.ShowApplyPromofunc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        showApplyPromoCode!
            ? GestureDetector(
                onTap: ShowApplyPromofunc,
                child: const ApplyPromocode(),
              )
            : Container(),
        Divider(
          height: 25.h,
          thickness: 1.3,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.Total_Payable,
                  style: ThemeService.TotalpayableTextStyle,
                ),
                Text(
                  Totalprice!,
                  style: ThemeService.TotalpayablePriceTextStyle,
                )
              ],
            ),
            ButtonWidget(
              btnHeight: 17.h,
              btnwidth: 70.w,
              btnbgColor: AppColors.primaryColor,
              btntextColor: Colors.white,
              btnborderColor: AppColors.primaryColor,
              btntext: BtnText!,
              btnFunc: BtnFunc,
            )
          ],
        )
      ],
    );
  }
}
