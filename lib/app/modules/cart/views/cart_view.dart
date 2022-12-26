import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:medi_eccomerce_flutter_getx/app/config/theme/AppColors.dart';
import 'package:medi_eccomerce_flutter_getx/app/utils/assets_image_path.dart';
import '../../../config/theme/theme_service.dart';
import '../../../utils/app_strings.dart';
import '../../Common_components/BottomPart.dart';
import '../Components/mycart/OrdersumaryPart.dart';
import '../Components/mycart/MedicineList.dart';
import '../Components/mycart/MedicineListHeading.dart';
import '../../Common_components/MyDivider.dart';
import '../Components/mycart/CompanyNamePart.dart';
import '../Components/mycart/medicineTotalPart.dart';
import '../controllers/cart_controller.dart';
import 'checkout_page_view.dart';

class CartView extends GetView<CartController> {
  const CartView({Key? key}) : super(key: key);

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
              medicineDetailPart(),
              BottomPart(
                showApplyPromoCode: true,
                Totalprice: controller.totalPrice.value.toString(),
                ShowApplyPromofunc: () {
                  controller.showDialogBox();
                },
                BtnText: "CheckOut",
                BtnFunc: () {
                  Get.to(() => const ConfirmationPageView());
                },
              )
            ],
          ),
        ));
  }

  Column medicineDetailPart() {
    return Column(
      children: [
        SizedBox(
          height: 15.h,
        ),
        const CompanyNamePart(),
        const MyDivider(),
        medicinesHeading(),
        const MyDivider(),
        const MedicineListHeading(),
        MedicineList(controller: controller),
        const MyDivider(),
        medicineTotalPart(
            label: AppStrings.Medicine_Total,
            totalPrice: controller.totalPrice.value.toString()),
        const MyDivider(),
        medicineTotalPart(
            label: AppStrings.Vendor_Total,
            totalPrice: controller.totalPrice.value.toString()),
        orderSummary(),
        MyDivider(),
        SummaryColumn()
      ],
    );
  }

  Column SummaryColumn() {
    return Column(
      children: [
        OrdersumaryPart(
          label: AppStrings.Grand_Total,
          labelDetails: controller.totalPrice.value.toString(),
          labelColor: AppColors.secondaryColor,
          labelDetailsColor: AppColors.secondaryColor,
        ),
        GestureDetector(
          onTap: () {
            controller.showDialogBox();
          },
          child: OrdersumaryPart(
            label: AppStrings.Promo,
            labelDetails: AppStrings.Apply_now,
            labelColor: AppColors.secondaryColor,
            labelDetailsColor: AppColors.textPrimaryColor,
          ),
        ),
        OrdersumaryPart(
          label: AppStrings.Saved,
          labelDetails: "৳0.00",
          labelColor: AppColors.secondaryColor,
          labelDetailsColor: AppColors.secondaryColor,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              AppStrings.Total_Payable,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              controller.totalPrice.value.toString(),
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ],
    );
  }

  Container orderSummary() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Text(
        AppStrings.Order_Summary,
        style: TextStyle(fontSize: 18.sp),
      ),
    );
  }

  Row medicinesHeading() {
    return Row(
      children: [
        Image.asset(AssetsImagePath.pills),
        SizedBox(
          width: 10.w,
        ),
        Text(
          AppStrings.Medicine,
          style: ThemeService.MycartHeadingTextStyle,
        )
      ],
    );
  }
}
