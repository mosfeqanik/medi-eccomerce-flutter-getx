import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:medi_eccomerce_flutter_getx/app/config/theme/AppColors.dart';
import 'package:medi_eccomerce_flutter_getx/app/modules/medicines/views/product_component/PriceRow.dart';
import 'package:medi_eccomerce_flutter_getx/app/modules/medicines/views/product_component/productDescription.dart';
import 'package:medi_eccomerce_flutter_getx/app/modules/medicines/views/product_component/productNamepart.dart';

import '../../../config/theme/theme_service.dart';
import '../../../utils/app_strings.dart';
import '../../../utils/assets_image_path.dart';
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
        title: Text(
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
            productImage(),
            PriceRow(
              controller: controller,
              productPrice: "৳10",
              productRegularPrice: "৳11",
            ),
            productNamepart(
                controller: controller,
                productName: "Napa 500mg ${controller.indexvalue.value}",
                productCompanyName: "ePharma"),
            productDividerwidget(),
            productDescription(controller: controller),
            Row(
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
                      print("Add to cart");
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
                      print("Buy now");
                    })
              ],
            )
          ],
        ),
      ),
    );
  }

  Divider productDividerwidget() {
    return const Divider(
      height: 50,
      thickness: 1.3,
    );
  }

  Image productImage() {
    return Image.asset(
      AssetsImagePath.napaimage,
      width: 450.w,
    );
  }
}


