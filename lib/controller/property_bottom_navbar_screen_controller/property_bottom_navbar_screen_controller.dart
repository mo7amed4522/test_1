// ignore_for_file: prefer_final_fields, unused_field

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:test_1/core/constant/constant.dart';
import 'package:test_1/core/constant/curd.dart';
import 'package:test_1/core/constant/link_api.dart';
import 'package:test_1/core/routes/route.dart';
import 'package:test_1/model/property_data_model.dart';

abstract class PropertyBottomNavbarScreenController extends GetxController {
  void goToPropertyPageDetails(int index);
}

class PropertyBottomNavbarScreenControllerIMP
    extends PropertyBottomNavbarScreenController {
  Crud _crud = Crud();
  bool isLoading = false;
  List<PropertyData>? propertyData;

  @override
  void onInit() {
    if (propertyDataConst.isEmpty) {
      getPropertyData();
    } else {
      propertyData = propertyDataConst;
      if (kDebugMode) {
        print('Data Load not From Server !!');
      }
      Future.delayed(const Duration(seconds: 2), () async {
        isLoading = true;
        update();
      });
    }
    super.onInit();
  }

  getPropertyData() async {
    isLoading = true;
    update();
    var response = await _crud.getRequest(ApiLink.getAllProperty);
    if (response != null) {
      propertyDataConst = List<PropertyData>.from(
          response.map((x) => PropertyData.fromJson(x)));
      propertyData = propertyDataConst;
      isLoading = true;
      update();
    } else {
      isLoading = true;
      update();
      Get.back();
      Get.snackbar('Error !!', 'Something went wrong',
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  @override
  void goToPropertyPageDetails(int index) {
    Get.toNamed(AppRoutes.propertyDetails, arguments: {
      'propertyPageDetails': propertyData![index],
    });
  }
}
