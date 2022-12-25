import 'package:flutter/material.dart';

import '../../../config/theme/theme_service.dart';

class OrderConfirmationDetails extends StatelessWidget {
  final String? detailText;

  const OrderConfirmationDetails({Key? key, this.detailText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 40),
        child: Text(
          detailText!,
          textAlign: TextAlign.center,
          style: ThemeService.OrderConfirmDetailsTextStyle,
        ),
      ),
    );
  }
}
