import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/theme/theme_service.dart';
import '../controllers/medicines_controller.dart';

class MedicineListTileWidget extends StatelessWidget {
  String? MedicineName;
  String? MedicineCompanyName;
  String? MedicineQuantity;
  String? MedicinePrice;
  String? MedicineRegularPrice;

  MedicineListTileWidget({
    Key? key,
    this.MedicineName,
    this.MedicineCompanyName,
    this.MedicineQuantity,
    this.MedicinePrice,
    this.MedicineRegularPrice,
    required this.controller,
  }) : super(key: key);

  final MedicinesController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            MedicineName!,
            style: ThemeService.ListTileHeading,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                MedicineCompanyName!,
                style: ThemeService.companyNameStyle,
              ),
              Text(
                "${MedicineQuantity == "0" ? "Add to cart" : MedicineQuantity}",
                style: ThemeService.addToCartStyle,
              )
            ],
          ),
          Row(
            children: [
              Text(MedicinePrice!, style: ThemeService.priceStyle),
              SizedBox(
                width: 10.w,
              ),
              Text(MedicineRegularPrice!,
                  style: ThemeService.lineThroughPriceStyle),
            ],
          ),
        ],
      ),
    );
  }
}