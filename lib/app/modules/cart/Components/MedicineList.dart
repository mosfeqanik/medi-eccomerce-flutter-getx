import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../controllers/cart_controller.dart';
class MedicineList extends StatelessWidget {
  const MedicineList({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final CartController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: controller.cartMedicineList.value.length > 3 ? 80.h : 70.h,
      child: ListView.builder(
          itemCount: controller.cartMedicineList.value.length,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.symmetric(vertical: 8.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    flex: 2,
                    child: Text(
                        "${controller.cartMedicineList[index].medicineName}"),
                  ),
                  Expanded(
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
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
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}