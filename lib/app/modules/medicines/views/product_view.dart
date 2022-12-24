import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:medi_eccomerce_flutter_getx/app/config/theme/AppColors.dart';
import 'package:medi_eccomerce_flutter_getx/app/modules/medicines/views/product_component/PriceRow.dart';
import 'package:medi_eccomerce_flutter_getx/app/modules/medicines/views/product_component/productDescription.dart';
import 'package:medi_eccomerce_flutter_getx/app/modules/medicines/views/product_component/productNamepart.dart';
import 'package:medi_eccomerce_flutter_getx/app/routes/app_pages.dart';

import '../../../utils/app_strings.dart';
import '../../Common_components/ButtonWidget.dart';
import '../controllers/medicines_controller.dart';

class ProductView extends GetView<MedicinesController> {
  const ProductView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Get.back(),
        ),
        title: const Text(
          AppStrings.Product,
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart_outlined,
              size: 25.sp,
            ),
            color: Colors.black,
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            productImage(
                imagePath: controller
                    .medicineList[controller.indexvalue.value]
                    .medicineImagePath!),
            PriceRow(
              controller: controller,
              productPrice: controller
                  .medicineList[controller.indexvalue.value].medicinePrice,
              productRegularPrice: controller
                  .medicineList[controller.indexvalue.value]
                  .medicineRegularPrice,
            ),
            productNamepart(
                controller: controller,
                productName: controller
                    .medicineList[controller.indexvalue.value].medicineName,
                productCompanyName: controller
                    .medicineList[controller.indexvalue.value]
                    .medicineCompanyName),
            productDividerwidget(),
            productDescription(controller: controller),
            SizedBox(
              height: 20.h,
            ),
            buttonRow(),
            SizedBox(
              height: 2.h,
            )
          ],
        ),
      ),
    );
  }

  Row buttonRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ButtonWidget(
            btnHeight: 17.h,
            btnwidth: 48.w,
            btnbgColor: AppColors.btnSecondarColor,
            btntextColor: AppColors.primaryColor,
            btnborderColor: AppColors.primaryColor,
            btntext: 'Add to cart',
            btnFunc: () {
              Get.toNamed(Routes.CART);
            }),
        SizedBox(
          width: 10.w,
        ),
        ButtonWidget(
            btnHeight: 17.h,
            btnwidth: 48.w,
            btnbgColor: AppColors.primaryColor,
            btntextColor: Colors.white,
            btnborderColor: AppColors.primaryColor,
            btntext: 'Buy Now',
            btnFunc: () {
              Get.toNamed(Routes.CART);
            })
      ],
    );
  }

  Divider productDividerwidget() {
    return Divider(
      height: 35.h,
      thickness: 1.3,
    );
  }

  Image productImage({required String imagePath}) {
    return Image.asset(
      imagePath,
      width: 450.w,
      height: 350.h,
    );
  }
}
