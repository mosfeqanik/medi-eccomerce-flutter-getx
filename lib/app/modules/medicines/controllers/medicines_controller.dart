import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/assets_image_path.dart';
import '../model/MedicineModelClass.dart';

class MedicinesController extends GetxController {
  //TODO: Implement HomeController
  var medicineList = <MedicineModel>[].obs;
  var indexvalue = 0.obs;
  var searchTextController = TextEditingController();

  @override
  void onInit() {
    medicineList.add(
      MedicineModel(
        medicineID: 1,
        medicineName: "Ecospirin 150Mg Tablet 14’S",
        medicineCompanyName: "ACME Limited",
        medicinePrice: 7.50,
        medicineRegularPrice: "8.43",
        quantity: "0",
        medicineImagePath: AssetsImagePath.Ecospirinimage,
        isAddedToCart: false,
      ),
    );
    medicineList.add(
      MedicineModel(
        medicineID: 2,
        medicineName: "Asthalin Inhaler 200Md",
        medicineCompanyName: "Cipla Limited Respiratory",
        medicinePrice: 118.26,
        medicineRegularPrice: "139.13",
        quantity: "0",
        medicineImagePath: AssetsImagePath.Asthalin_Inhalerimage,
        isAddedToCart: false,
      ),
    );
    medicineList.add(
      MedicineModel(
        medicineID: 3,
        medicineName: "Napa",
        medicineCompanyName: "Beximco-pharmaceuticals-ltd",
        medicinePrice: 1.15,
        medicineRegularPrice: "1.20",
        quantity: "0",
        medicineImagePath: AssetsImagePath.napaimage,
        isAddedToCart: false,
      ),
    );
    medicineList.add(
      MedicineModel(
        medicineID: 4,
        medicineName: "Monas 10",
        medicineCompanyName: "the-acme-laboratories-ltd.",
        medicinePrice: 15.36,
        medicineRegularPrice: "16.00",
        quantity: "0",
        medicineImagePath: AssetsImagePath.monas_10,
        isAddedToCart: false,
      ),
    );
    medicineList.add(
      MedicineModel(
        medicineID: 5,
        medicineName: "Antazol 0.1%",
        medicineCompanyName: "Square Pharmaceuticals Limited",
        medicinePrice: 19.20,
        medicineRegularPrice: "20.00",
        quantity: "0",
        medicineImagePath: AssetsImagePath.Antazol,
        isAddedToCart: false,
      ),
    );
    medicineList.add(
      MedicineModel(
        medicineID: 6,
        medicineName: "Altrum Silver ( 30 pcs )",
        medicineCompanyName: "Ziska Pharmaceuticals Limited",
        medicinePrice: 201.60,
        medicineRegularPrice: "210.00",
        quantity: "0",
        medicineImagePath: AssetsImagePath.Altrum_Silver,
        isAddedToCart: false,
      ),
    );
    medicineList.add(
      MedicineModel(
        medicineID: 6,
        medicineName: "B-50 Forte",
        medicineCompanyName: "Cipla Limited Respiratory",
        medicinePrice: 118.26,
        medicineRegularPrice: "139.13",
        quantity: "0",
        medicineImagePath: AssetsImagePath.B_50_Forte,
        isAddedToCart: false,
      ),
    );
    medicineList.add(
      MedicineModel(
        medicineID: 7,
        medicineName: "Afrin 0.05%-10 ml",
        medicineCompanyName: "Aristopharma Ltd.",
        medicinePrice: 43.20,
        medicineRegularPrice: "45.00",
        quantity: "0",
        medicineImagePath: AssetsImagePath.Afrin,
        isAddedToCart: false,
      ),
    );
    medicineList.add(
      MedicineModel(
        medicineID: 8,
        medicineName: "Zero 8",
        medicineCompanyName: "ACME Limited",
        medicinePrice: 9.60,
        medicineRegularPrice: "10.00",
        quantity: "0",
        medicineImagePath: AssetsImagePath.Zero8,
        isAddedToCart: false,
      ),
    );
    medicineList.add(
      MedicineModel(
        medicineID: 9,
        medicineName: "Fast 60 ml",
        medicineCompanyName: "ACME Limited",
        medicinePrice: 19.86,
        medicineRegularPrice: "20.69",
        quantity: "0",
        medicineImagePath: AssetsImagePath.Fast,
        isAddedToCart: false,
      ),
    );
    medicineList.add(
      MedicineModel(
        medicineID: 10,
        medicineName: "Histalex 100 ml",
        medicineCompanyName: "the-acme-laboratories-ltd.",
        medicinePrice: 20.98,
        medicineRegularPrice: "21.85",
        quantity: "0",
        medicineImagePath: AssetsImagePath.Histalex,
        isAddedToCart: false,
      ),
    );
    super.onInit();
  }
}
