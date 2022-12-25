import 'package:get/get.dart';

import '../../cart/controllers/cart_controller.dart';
import '../controllers/medicines_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MedicinesController>(
      () => MedicinesController(),
    );
    Get.lazyPut<CartController>(
          () => CartController(),
    );
  }
}
