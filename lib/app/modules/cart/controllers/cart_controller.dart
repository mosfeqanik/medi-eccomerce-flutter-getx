import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medi_eccomerce_flutter_getx/app/utils/app_strings.dart';

import '../../../config/theme/AppColors.dart';
import '../../../config/theme/theme_service.dart';
import '../../../utils/assets_image_path.dart';
import '../../Common_components/ButtonWidget.dart';
import '../../medicines/model/MedicineModelClass.dart';

class CartController extends GetxController {
  var cartMedicineList = <MedicineModel>[].obs;
  var TermsCheckedBox = false.obs;
  final count = 0.obs;
  var selectedRadioTile = 0.obs;
  var totalPrice = "".obs;

  showDialogBox() {
    Get.defaultDialog(
        title: '',
        content: Column(
          children: [
            Image.asset(AssetsImagePath.Tag),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0.h, vertical: 10),
              child: Text(
                AppStrings.Apply_promo_code,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
              ),
            ),
            SizedBox(height: 20.h),
            Container(
              width: 300.w,
              margin: EdgeInsets.symmetric(horizontal: 10.h),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xffDDDDDD),
                    blurRadius: 6.0,
                    spreadRadius: 2.0,
                    offset: Offset(0.0, 0.0),
                  )
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter Promo Code",
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20.0.h, horizontal: 10.h),
              padding: EdgeInsets.symmetric(vertical: 8.0.h),
              decoration: BoxDecoration(
                  border: Border.all(color: AppColors.secondaryColor)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 8.0.w),
                    child: Column(
                      children: [
                        Text(
                          AppStrings.Discount_on_Diagnostics,
                          style: ThemeService.ShowDialogAlertStyle,
                        ),
                        Text(AppStrings.DiscountDialog,
                            style: ThemeService.ShowDialogDetailsStyle)
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10.sp),
                    child: Image.asset(AssetsImagePath.tick_mark),
                  )
                ],
              ),
            ),
            ButtonWidget(
                btnHeight: 17.h,
                btnwidth: 120.w,
                btnbgColor: AppColors.primaryColor,
                btntextColor: Colors.white,
                btnborderColor: AppColors.primaryColor,
                btntext: 'Apply',
                btnFunc: () {
                  Get.back();
                }),
          ],
        ),
        radius: 10.0);
  }

  AddToCart({
    required int medicineID,
    required String medicineName,
    required String medicinePrice,
    required String quantity,
    context,
  }) {
    var newmedicinePrice = double.parse(medicinePrice);
    cartMedicineList.add(
      MedicineModel(
        medicineID: medicineID,
        medicineName: medicineName,
        medicinePrice: newmedicinePrice,
        quantity: quantity,
      ),
    );
    double total = cartMedicineList.fold(
        0, (tot, item) => tot.toDouble() + item.medicinePrice!);

    totalPrice.value = total.toStringAsFixed(2);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$medicineName Add to Cart!'),
        backgroundColor: Colors.green,
      ),
    );
  }
}
