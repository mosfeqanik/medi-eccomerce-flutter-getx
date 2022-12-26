import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:medi_eccomerce_flutter_getx/app/config/theme/AppColors.dart';
import 'package:medi_eccomerce_flutter_getx/app/modules/cart/Components/payment/paymentPageHeading.dart';
import 'package:medi_eccomerce_flutter_getx/app/utils/assets_image_path.dart';

import '../../../config/theme/theme_service.dart';
import '../../../utils/app_strings.dart';
import '../../Common_components/ButtonWidget.dart';
import '../Components/payment/PaymentMethodRadioListTile.dart';
import '../controllers/cart_controller.dart';
import 'order_complete_view.dart';

class PaymentPageView extends GetView<CartController> {
  const PaymentPageView({Key? key}) : super(key: key);

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
          AppStrings.Payment,
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
            paymentToColumn(),
            paymentMethodColumn(),
          ],
        ),
      ),
    );
  }

  Column paymentMethodColumn() {
    return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              paymentPageHeading(labelText: AppStrings.Payment_methods),
              PaymentMethodRadioListTile(
                  controller: controller,
                  listTileTittle: AppStrings.bKash_Payment,
                  listTileValue: 1,
                  logoPath: AssetsImagePath.bkash),
              PaymentMethodRadioListTile(
                  controller: controller,
                  listTileTittle: AppStrings.Credit_Debit_Card,
                  listTileValue: 2,
                  logoPath: AssetsImagePath.card_pic),
              PaymentMethodRadioListTile(
                  controller: controller,
                  listTileTittle: AppStrings.Nagad_Payment,
                  listTileValue: 3,
                  logoPath: AssetsImagePath.nagad_logo),
              ButtonWidget(
                btnFunc: () {
                  Get.to(() => const OrderCompleteView());
                },
                btnbgColor: AppColors.primaryColor,
                btnborderColor: AppColors.primaryColor,
                btntext: "Pay Now",
                btnwidth: 150.w,
                btnHeight: 17.h,
              ),
            ],
          );
  }

  Column paymentToColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        paymentPageHeading(labelText: AppStrings.You_are_buyin_from),
        Text(
          AppStrings.Diagnostics,
          style: ThemeService.ProductHeadingTextStyle,
        ),
        Text(
          controller.totalPrice.value.toString(),
          style: TextStyle(
              fontSize: 35.sp,
              color: AppColors.textPrimaryColor,
              fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
