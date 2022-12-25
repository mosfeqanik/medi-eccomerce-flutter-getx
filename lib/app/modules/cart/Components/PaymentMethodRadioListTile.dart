import 'package:flutter/material.dart'
    '';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:medi_eccomerce_flutter_getx/app/modules/cart/Components/paymentRadiowidget.dart';

import '../../../config/theme/AppColors.dart';
import '../controllers/cart_controller.dart';
class PaymentMethodRadioListTile extends StatelessWidget {
  final int? listTileValue;
  final String? logoPath;
  final String? listTileTittle;

  const PaymentMethodRadioListTile({
    Key? key,
    required this.controller,
    required this.listTileValue,
    required this.logoPath,
    required this.listTileTittle,
  }) : super(key: key);
  final CartController controller;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return RadioListTile(
        value: listTileValue,
        groupValue: controller.selectedRadioTile.value,
        title: paymentRadiowidget(
            imagePath: logoPath, paymentMethodName: listTileTittle),
        onChanged: (val) {
          controller.selectedRadioTile.value = val!;
        },
        activeColor: AppColors.primaryColor,
        selected: false,
      );
    });
  }
}
