import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medi_eccomerce_flutter_getx/app/modules/medicines/Components/medicine_component/MedicineListTileWidget.dart';
import 'package:medi_eccomerce_flutter_getx/app/modules/medicines/views/product_view.dart';

import '../../controllers/medicines_controller.dart';

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
              // print(controller.medicineList[index].medicineID);
              controller.indexvalue.value = index;
              Get.to(() => const ProductView());
            },
            child: MedicineListTileWidget(
              controller: controller,
              MedicineName: controller.medicineList[index].medicineName,
              MedicineID: controller.medicineList[index].medicineID,
              MedicineCompanyName:
                  controller.medicineList[index].medicineCompanyName,
              MedicinePrice: controller.medicineList[index].medicinePrice.toString(),
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
