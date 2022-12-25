import 'package:flutter/material.dart';

import '../../config/theme/AppColors.dart';

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
