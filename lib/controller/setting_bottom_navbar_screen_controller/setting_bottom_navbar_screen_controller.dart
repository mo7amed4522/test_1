import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_1/core/constant/bottom_sheet_theme_widget.dart';
import 'package:test_1/core/routes/route.dart';
import 'package:test_1/core/server/my_server.dart';

abstract class SettingBottomNavbarScreenController extends GetxController {
  void onChngeThemesClick();
  void goToCreateNewUser();
  void goToCreateNewProperty();
}

class SettingBottomNavbarScreenControllerIMP
    extends SettingBottomNavbarScreenController {
  MyServices myServices = Get.find();
  @override
  void onChngeThemesClick() {
    Get.bottomSheet(BottomSheetThemeWidget(
      onDarkMode: () {
        changeTheme('dark');
      },
      onLightMode: () {
        changeTheme('light');
      },
    ));
  }

  void changeTheme(String? value) async {
    if (value == 'dark') {
      Get.changeThemeMode(ThemeMode.dark);
      await myServices.sharedPreferences.setBool('theme', true);
      Get.back();
    } else {
      Get.changeThemeMode(ThemeMode.light);
      await myServices.sharedPreferences.setBool('theme', false);
      Get.back();
    }
  }

  @override
  void goToCreateNewProperty() {
    Get.toNamed(AppRoutes.crateNewProperty);
  }

  @override
  void goToCreateNewUser() {
    Get.toNamed(AppRoutes.crateNewUser);
  }
}
