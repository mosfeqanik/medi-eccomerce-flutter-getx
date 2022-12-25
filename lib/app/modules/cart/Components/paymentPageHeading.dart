import 'package:flutter/material.dart';
import 'package:medi_eccomerce_flutter_getx/app/config/theme/theme_service.dart';
class paymentPageHeading extends StatelessWidget {
  String? labelText;

  paymentPageHeading({
    Key? key,
    this.labelText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      labelText!,
      style: ThemeService.companyNameStyle,
    );
  }
}
