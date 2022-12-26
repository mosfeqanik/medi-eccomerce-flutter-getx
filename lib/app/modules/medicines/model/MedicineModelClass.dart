class MedicineModel {
  int? medicineID;
  String? medicineName;
  String? medicineCompanyName;
  double? medicinePrice;
  String? medicineRegularPrice;
  String? quantity;
  String? medicineImagePath;
  bool? isAddedToCart;

  MedicineModel({
    this.medicineID,
    this.medicineName,
    this.medicineCompanyName,
    this.medicinePrice,
    this.medicineRegularPrice,
    this.medicineImagePath,
    this.quantity,
    this.isAddedToCart,
  });
}
