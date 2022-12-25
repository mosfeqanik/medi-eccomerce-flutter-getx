import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'AppColors.dart';

class ThemeService {
  ThemeService._();

  // final storageKey = 'isDarkMode';
  //
  // ThemeMode getThemeMode() =>
  //     isSavedDarkMode() ? ThemeMode.dark : ThemeMode.light;
  //
  // bool isSavedDarkMode() => _getStorage.read(storageKey) ?? false;
  //
  // void saveThemeMode(bool isDarkMode) {
  //   _getStorage.write(storageKey, isDarkMode);
  // }
  //
  // void changeThemeMode() {
  //   Get.changeThemeMode(isSavedDarkMode() ? ThemeMode.light : ThemeMode.dark);
  //   saveThemeMode(!isSavedDarkMode());
  // }

  static var ListHeadingTextStyle = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.w600,
  );
  static var ListTileHeading = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w500,
  );
  static var lineThroughPriceStyle = TextStyle(
    decoration: TextDecoration.lineThrough,
    fontSize: 15.sp,
    color: AppColors.secondaryColor,
  );
  static var priceStyle = TextStyle(
      fontSize: 17.sp,
      color: AppColors.textPrimaryColor,
      fontWeight: FontWeight.w700);
  static var addToCartStyle = const TextStyle(fontWeight: FontWeight.bold);
  static var companyNameStyle = TextStyle(
    fontSize: 15.sp,
    color: AppColors.secondaryColor,
  );
  static var lineThroughProductPriceStyle = TextStyle(
    decoration: TextDecoration.lineThrough,
    fontSize: 14.sp,
    color: AppColors.secondaryColor,
  );
  static var ProductpriceStyle = TextStyle(
      fontSize: 26.sp,
      color: AppColors.textPrimaryColor,
      fontWeight: FontWeight.w700);
  static var DescriptionStyle = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.w500,
  );
  static var ButtonTextStyle = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
  );
  static var MycartHeadingTextStyle = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
  );
  static var TotalpayableTextStyle = TextStyle(
    color: AppColors.secondaryColor,
    fontSize: 18.sp,
  );
  static var TotalpayablePriceTextStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18.sp,
  );
  static var ShowDialogAlertStyle = TextStyle(
      fontSize: 20.sp, fontFamily: 'Barlow', fontWeight: FontWeight.bold);
  static var ShowDialogDetailsStyle = TextStyle(
    fontSize: 10.sp,
  );
  static var ProductHeadingTextStyle = TextStyle(
    fontSize: 25.sp,
  );
  static var PaymentMethodTittle = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 20.sp,
  );
  static var OrderConfirmDetailsTextStyle = TextStyle(
    fontSize: 16.sp,
  );
  static var OrderConfirmTextStyle =
      TextStyle(fontSize: 28.sp, fontWeight: FontWeight.w400);
}
