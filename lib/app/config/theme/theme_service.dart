import 'package:flutter/material.dart';


class ThemeService {
  ThemeService._();
  // final storageKey = 'isDarkMode';
  //
  // ThemeMode getThemeMode() =>
  //     isSavedDarkMode() ? ThemeMode.dark : ThemeMode.light;
  //
  // bool isSavedDarkMode() => _getStorage.read(storageKey) ?? false;
  //
  // void saveThemeMode(bool isDarkMode) {
  //   _getStorage.write(storageKey, isDarkMode);
  // }
  //
  // void changeThemeMode() {
  //   Get.changeThemeMode(isSavedDarkMode() ? ThemeMode.light : ThemeMode.dark);
  //   saveThemeMode(!isSavedDarkMode());
  // }


  static var onboardTitleStyle = TextStyle(
    fontWeight: FontWeight.bold,
  );

}