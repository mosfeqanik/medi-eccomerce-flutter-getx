import 'package:get/get.dart';

import '../../../utils/assets_image_path.dart';
import '../../medicines/model/MedicineModelClass.dart';

class CartController extends GetxController {
  var cartMedicineList = <MedicineModel>[].obs;

  final count = 0.obs;

  @override
  void onInit() {
    cartMedicineList.add(
      MedicineModel(
        medicineName: "Ecospirin 150Mg Tablet 14’S",
        medicineCompanyName: "ACME Limited",
        medicinePrice: "7.50",
        medicineRegularPrice: "8.43",
        quantity: "0",
        medicineImagePath: AssetsImagePath.Ecospirinimage,
      ),
    );
    cartMedicineList.add(
      MedicineModel(
        medicineName: "Napa",
        medicineCompanyName: "Beximco-pharmaceuticals-ltd",
        medicinePrice: "1.15",
        medicineRegularPrice: "1.20",
        quantity: "0",
        medicineImagePath: AssetsImagePath.napaimage,
      ),
    );
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
