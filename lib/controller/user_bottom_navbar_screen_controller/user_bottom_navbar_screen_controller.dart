// ignore_for_file: unused_field, prefer_final_fields

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:test_1/core/constant/constant.dart';
import 'package:test_1/core/constant/curd.dart';
import 'package:test_1/core/constant/link_api.dart';
import 'package:test_1/core/constant/loader.dart';
import 'package:test_1/core/routes/route.dart';
import 'package:test_1/model/user_data_model.dart';

abstract class UserBottomNavbarScreenController extends GetxController {
  void goToUserPageDetails(int index);
}

class UserBottomNavbarScreenControllerIMP
    extends UserBottomNavbarScreenController {
  Crud _crud = Crud();
  bool isLoading = false;
  List<UserData>? userData;

  @override
  void onInit() {
    if (userDataConst.isEmpty) {
      getUserData();
    } else {
      userData = userDataConst;
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

  getUserData() async {
    Loader().lottieLoader();
    var response = await _crud.getRequest(ApiLink.getAllUsers);
    if (response != null) {
      userDataConst =
          List<UserData>.from(response.map((x) => UserData.fromJson(x)));
      userData = userDataConst;
      Get.back();
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
  void goToUserPageDetails(int index) {
    Get.toNamed(AppRoutes.userDetails, arguments: {
      'userDataDetails': userData![index],
    });
  }
}
