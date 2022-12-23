import 'package:get/get.dart';

import '../modules/medicines/bindings/medicines_binding.dart';
import '../modules/medicines/views/medicines_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const MedicinesView(),
      binding: HomeBinding(),
    ),
  ];
}
