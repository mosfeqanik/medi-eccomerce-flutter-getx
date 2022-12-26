import 'package:flutter/material.dart';

import '../../config/theme/theme_service.dart';

class ListHeading extends StatelessWidget {
  String? textHeading;

  ListHeading({Key? key, this.textHeading}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      textHeading!,
      style: ThemeService.ListHeadingTextStyle,
    );
  }
}
