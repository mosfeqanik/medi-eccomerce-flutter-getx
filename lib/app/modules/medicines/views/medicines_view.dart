import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:medi_eccomerce_flutter_getx/app/utils/app_strings.dart';
import '../../../config/theme/AppColors.dart';
import '../../../config/theme/theme_service.dart';
import '../../ListHeading.dart';
import '../MedicineListview.dart';
import '../controllers/medicines_controller.dart';

class MedicinesView extends GetView<MedicinesController> {
  const MedicinesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'HomeView',
          style: TextStyle(fontFamily: 'Barlow', fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListHeading(textHeading: AppStrings.Medicine),
          MedicineListView(controller: controller)
        ],
      ),
    );
  }
}


