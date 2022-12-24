import 'package:flutter/material.dart';

import '../../../utils/app_strings.dart';
import '../../../utils/assets_image_path.dart';
import '../../ListHeading.dart';
class CompanyNamePart extends StatelessWidget {
  const CompanyNamePart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ListHeading(
          textHeading: AppStrings.ePharma,
        ),
        Image.asset(AssetsImagePath.company_logo)
      ],
    );
  }
}
