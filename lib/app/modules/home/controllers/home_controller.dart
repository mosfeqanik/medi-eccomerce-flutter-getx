import 'package:get/get.dart';

import '../model/MedicineModelClass.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  var medicineList = <MedicineModel>[].obs;

  @override
  void onInit() {
    medicineList.add(MedicineModel(
        medicineName: "Ecospirin 150Mg Tablet 14’S",
        medicineCompanyName: "ACME Limited",
        medicinePrice: "7.50",
        medicineDiscount: "8.43",
        quantity: "0"));
    medicineList.add(MedicineModel(
        medicineName: "Asthalin Inhaler 200Md",
        medicineCompanyName: "Cipla Limited Respiratory",
        medicinePrice: "118.26",
        medicineDiscount: "139.13",
        quantity: "0"));
    medicineList.add(MedicineModel(
        medicineName: "Asthalin Inhaler 200Md",
        medicineCompanyName: "Cipla Limited Respiratory",
        medicinePrice: "118.26",
        medicineDiscount: "139.13",
        quantity: "0"));
    medicineList.add(MedicineModel(
        medicineName: "Ecospirin 150Mg Tablet 14’S",
        medicineCompanyName: "ACME Limited",
        medicinePrice: "7.50",
        medicineDiscount: "8.43",
        quantity: "0"));
    medicineList.add(MedicineModel(
        medicineName: "Ecospirin 150Mg Tablet 14’S",
        medicineCompanyName: "ACME Limited",
        medicinePrice: "7.50",
        medicineDiscount: "8.43",
        quantity: "0"));
    medicineList.add(MedicineModel(
        medicineName: "Asthalin Inhaler 200Md",
        medicineCompanyName: "Cipla Limited Respiratory",
        medicinePrice: "118.26",
        medicineDiscount: "139.13",
        quantity: "0"));
    medicineList.add(MedicineModel(
        medicineName: "Asthalin Inhaler 200Md",
        medicineCompanyName: "Cipla Limited Respiratory",
        medicinePrice: "118.26",
        medicineDiscount: "139.13",
        quantity: "0"));
    medicineList.add(MedicineModel(
        medicineName: "Asthalin Inhaler 200Md",
        medicineCompanyName: "Cipla Limited Respiratory",
        medicinePrice: "118.26",
        medicineDiscount: "139.13",
        quantity: "0"));
    super.onInit();
  }
}
