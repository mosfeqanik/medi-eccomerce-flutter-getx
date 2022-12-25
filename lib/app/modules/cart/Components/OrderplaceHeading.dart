import 'package:flutter/material.dart';

import '../../../config/theme/theme_service.dart';

class OrderplaceHeading extends StatelessWidget {
  final String? headingText;

  const OrderplaceHeading({Key? key, this.headingText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        headingText!,
        style: ThemeService.OrderConfirmTextStyle,
      ),
    );
  }
}
