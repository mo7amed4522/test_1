import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:test_1/core/assets/app_assets.dart';
import 'package:test_1/core/routes/route.dart';
import 'package:test_1/views/screen/booking_bottom_navbar_screen/booking_bottom_navbar_screen.dart';
import 'package:test_1/views/screen/property_bottom_navbar_screen/property_bottom_navbar_screen.dart';
import 'package:test_1/views/screen/setting_bottom_navbar_screen/setting_bottom_navbar_screen.dart';
import 'package:test_1/views/screen/user_bottom_navbar_screen/user_bottom_navbar_screen.dart';

abstract class HomeScreenController extends GetxController {
  void goToCreate(int index);
}

class HomeScreenControllerIMP extends HomeScreenController {
  var currentIndex = 0;
  var screen = [
    const UserBottomNavBarScreen(),
    const PropertyBottomNavbarScreen(),
    const BookingBottomNavbarScreen(),
    const SettingBottomNavbarScreen(),
  ];
  List<String> listOfName = [
    'user'.tr,
    'property'.tr,
    'booking'.tr,
    'setting'.tr,
  ];
  List<String> listOfTitle = [
    'create_user'.tr,
    'create_property'.tr,
    'create_booking'.tr,
    'create_setting'.tr,
  ];
  List<String> listOfIcons = [
    AppPhotoLink.user_svg,
    AppPhotoLink.property_svg,
    AppPhotoLink.booking_svg,
    AppPhotoLink.setting,
  ];

  changeIndex(index) {
    currentIndex = index;
    HapticFeedback.lightImpact();
    update();
  }

  @override
  void goToCreate(int index) {
    if (index == 0) {
      Get.toNamed(AppRoutes.crateNewUser);
    } else if (index == 1) {
      Get.toNamed(AppRoutes.crateNewProperty);
    } else if (index == 2) {
    } else if (index == 3) {}
  }
}
