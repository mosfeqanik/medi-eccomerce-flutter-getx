import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:medi_eccomerce_flutter_getx/app/config/theme/AppColors.dart';
import 'package:medi_eccomerce_flutter_getx/app/utils/app_strings.dart';
import '../../ListHeading.dart';
import '../../cart/Components/Badge.dart';
import '../MedicineListview.dart';
import '../controllers/medicines_controller.dart';

class MedicinesView extends GetView<MedicinesController> {
  const MedicinesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              medicineAppbar(),
              Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.w),
                  child: ListHeading(textHeading: AppStrings.Medicine)),
              MedicineListView(controller: controller)
            ],
          ),
        ),
      ),
    );
  }

  Container medicineAppbar() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          AppbarRow(),
          SearchTextfield(controller: controller),
        ],
      ),
    );
  }

  Row AppbarRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(width: 50.w),
        ListHeading(textHeading: AppStrings.Medicine),
        Badge(
          value: 1.toString(),
          color: AppColors.BagdeColor,
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart_outlined,
              size: 30.sp,
            ),
            color: Colors.black,
          ),
        )
      ],
    );
  }
}

class SearchTextfield extends StatelessWidget {
  const SearchTextfield({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final MedicinesController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 5.w),
      margin: EdgeInsets.symmetric(horizontal: 30.h, vertical: 10.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.textfieldbg,
        boxShadow: const [
          BoxShadow(color: Colors.white54, spreadRadius: 3),
        ],
      ),
      child: TextField(
        controller: controller.searchTextController,
        decoration: const InputDecoration(
          hintText: AppStrings.searching_hint,
          border: InputBorder.none,
          prefixIcon: Icon(Icons.search),
        ),
      ),
    );
  }
}
