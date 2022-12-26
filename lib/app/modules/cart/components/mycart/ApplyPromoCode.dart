import 'package:flutter/material.dart';

import '../../../../config/theme/AppColors.dart';
import '../../../../utils/app_strings.dart';
import '../../../../utils/assets_image_path.dart';
class ApplyPromocode extends StatelessWidget {
  const ApplyPromocode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Image.asset(AssetsImagePath.pencentage_pic),
        Text(
          AppStrings.Apply_promo_code,
          style: TextStyle(color: AppColors.secondaryColor),
        )
      ],
    );
  }
}
