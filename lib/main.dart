import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
import 'app/utils/app_strings.dart';
import 'app/utils/asset_fonts.dart';

void main() {
  runApp(const MediApp());
}

class MediApp extends StatelessWidget {
  const MediApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.Appstittle,
      initialRoute: AppPages.INITIAL,
      theme: ThemeData(fontFamily: Assetsfont.Aeroport),
      getPages: AppPages.routes,
    );
  }
}
