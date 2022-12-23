import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:medi_eccomerce_flutter_getx/app/modules/medicines/views/MedicineListTileWidget.dart';
import 'package:medi_eccomerce_flutter_getx/app/modules/medicines/views/product_view.dart';

import '../../config/theme/AppColors.dart';
import '../../config/theme/theme_service.dart';
import 'controllers/medicines_controller.dart';

class MedicineListView extends StatelessWidget {
  const MedicineListView({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final MedicinesController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
      ),
      height: Get.height - 130,
      child: ListView.builder(
        itemCount: controller.medicineList.value.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              print(index);
              Get.to(() => const ProductView());
            },
            child: MedicineListTileWidget(
              controller: controller,
              MedicineName: controller.medicineList[index].medicineName,
              MedicineCompanyName:
                  controller.medicineList[index].medicineCompanyName,
              MedicinePrice: controller.medicineList[index].medicinePrice,
              MedicineQuantity: controller.medicineList[index].quantity,
              MedicineRegularPrice:
                  controller.medicineList[index].medicineRegularPrice,
            ),
          );
        },
      ),
    );
  }
}
