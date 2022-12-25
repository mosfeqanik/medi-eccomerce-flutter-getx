import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:medi_eccomerce_flutter_getx/app/routes/app_pages.dart';

import '../../../config/theme/AppColors.dart';
import '../../../utils/app_strings.dart';
import '../../../utils/assets_image_path.dart';
import '../../Common_components/ButtonWidget.dart';
import '../Components/order_complete/OrderConfirmationDetails.dart';
import '../Components/order_complete/OrderplaceHeading.dart';

class OrderCompleteView extends GetView {
  const OrderCompleteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
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
            SizedBox(
              height: 10.h,
            ),
            OrderConfirmationColumn(),
            ButtonRow()
          ],
        ),
      ),
    );
  }

  Row ButtonRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ButtonWidget(
          btnHeight: 17.h,
          btnwidth: 40.w,
          btnbgColor: Colors.white30,
          btntextColor: Colors.black,
          btnborderColor: Colors.white30,
          btntext: "Back To Home",
          btnFunc: () {
            Get.toNamed(Routes.HOME);
          },
        ),
        ButtonWidget(
          btnHeight: 17.h,
          btnwidth: 40.w,
          btnbgColor: AppColors.primaryColor,
          btntextColor: Colors.white,
          btnborderColor: AppColors.primaryColor,
          btntext: "View Orders",
          btnFunc: () {
            print('View Orders');
          },
        )
      ],
    );
  }

  Column OrderConfirmationColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(AssetsImagePath.success_logo),
        SizedBox(
          height: 20.h,
        ),
        const OrderplaceHeading(
            headingText: AppStrings.Order_Placed_Successfully),
        const OrderConfirmationDetails(
          detailText: AppStrings.Order_Placed_Details,
        )
      ],
    );
  }
}
