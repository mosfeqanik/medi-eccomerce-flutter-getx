import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:medi_eccomerce_flutter_getx/app/config/theme/AppColors.dart';
import 'package:medi_eccomerce_flutter_getx/app/utils/assets_image_path.dart';

import '../../../config/theme/theme_service.dart';
import '../../../utils/app_strings.dart';
import '../../ListHeading.dart';
import '../controllers/cart_controller.dart';

class CartView extends GetView<CartController> {
  const CartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(controller.cartMedicineList.value.length);
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
            children: [
              SizedBox(
                height: 15.h,
              ),
              const CompanyNamePart(),
              myCartDivider(),
              medicinesHeading(),
              myCartDivider(),
              MedicineListHeading(),
              SizedBox(
                height: 100.h,
                child: ListView.builder(
                    itemCount: controller.cartMedicineList.value.length,
                    itemBuilder: (context, index) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                              "${controller.cartMedicineList[index].medicineName}"),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                "${controller.cartMedicineList[index].quantity}",
                              ),
                              SizedBox(
                                width: 30.w,
                              ),
                              Text(
                                "৳${controller.cartMedicineList[index].medicinePrice}",
                              ),
                            ],
                          ),
                        ],
                      );
                    }),
              )
            ],
          ),
        ));
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

  Divider myCartDivider() {
    return Divider(
      height: 25.h,
      thickness: 1.3,
    );
  }
}

class MedicineListHeading extends StatelessWidget {
  const MedicineListHeading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.only(left: 14.w),
          child: ListheadingWidget(
            Textheading: AppStrings.Type_Item,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 10.w,
            ),
            ListheadingWidget(
              Textheading: AppStrings.QTY,
            ),
            SizedBox(
              width: 30.w,
            ),
            ListheadingWidget(
              Textheading: AppStrings.Price_tk,
            ),
          ],
        ),
      ],
    );
  }
}

class ListheadingWidget extends StatelessWidget {
  String? Textheading;

  ListheadingWidget({Key? key, this.Textheading}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      Textheading!,
      style: TextStyle(color: AppColors.secondaryColor),
    );
  }
}

class CompanyNamePart extends StatelessWidget {
  const CompanyNamePart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ListHeading(
          textHeading: AppStrings.ePharma,
        ),
        Image.asset(AssetsImagePath.company_logo)
      ],
    );
  }
}
