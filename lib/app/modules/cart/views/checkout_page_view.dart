import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:medi_eccomerce_flutter_getx/app/config/theme/AppColors.dart';
import 'package:medi_eccomerce_flutter_getx/app/modules/cart/views/payment_page_view.dart';

import '../../../utils/app_strings.dart';
import '../../Common_components/ListHeading.dart';
import '../../Common_components/BottomPart.dart';
import '../../Common_components/MyDivider.dart';
import '../Components/shipping_info/ShippingRowWidget.dart';
import '../Components/shipping_info/TeamsAndCondition.dart';
import '../controllers/cart_controller.dart';

class ConfirmationPageView extends GetView<CartController> {
  const ConfirmationPageView({Key? key}) : super(key: key);

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
          AppStrings.My_Cart,
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
            Column(
              children: [
                shippingColumn(),
                InvoiceColumn(),
              ],
            ),
            BottomPart(
              showApplyPromoCode: false,
              Totalprice: controller.totalPrice.value.toString(),
              ShowApplyPromofunc: () => null,
              BtnText: "Confirm",
              BtnFunc: () {
                Get.to(() => PaymentPageView());
              },
            )
          ],
        ),
      ),
    );
  }

  Column InvoiceColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 30.h),
        ListHeading(textHeading: AppStrings.Invoice_information),
        const MyDivider(),
        const ShippingRowWidget(
          RowDetail: "hi@example.com",
          RowLabel: AppStrings.Email,
          TextColor: Colors.black,
        ),
        const MyDivider(),
        const ShippingRowWidget(
          RowDetail: "+8801710000000",
          RowLabel: AppStrings.Mobile_no,
          TextColor: Colors.black,
        ),
        SizedBox(
          height: 15.h,
        ),
        TeamsAndCondition(controller: controller,)
      ],
    );
  }

  Column shippingColumn() {
    return Column(
      children: [
        ListHeading(textHeading: AppStrings.Shipping_Information_Form),
        const MyDivider(),
        const ShippingRowWidget(
          RowDetail: "Abdullah Al Noman",
          RowLabel: AppStrings.Name,
          TextColor: Colors.black,
        ),
        const MyDivider(),
        ShippingRowWidget(
          RowDetail: AppStrings.ExampleEmail,
          TextColor: AppColors.secondaryColor,
          RowLabel: AppStrings.Email,
        ),
        const MyDivider(),
        ShippingRowWidget(
          RowDetail: AppStrings.ExampleAddress,
          TextColor: AppColors.secondaryColor,
          RowLabel: AppStrings.Address,
        ),
        const MyDivider(),
        ShippingRowWidget(
          RowDetail: AppStrings.ExamplePostCode,
          TextColor: AppColors.secondaryColor,
          RowLabel: AppStrings.Post,
        ),
      ],
    );
  }
}


