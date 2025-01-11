import 'package:get/get.dart';
import 'package:test_1/core/routes/route.dart';

abstract class StartScreenController extends GetxController {}

class StartScreenControllerIMP extends StartScreenController {
  @override
  void onInit() {
    Future.delayed(const Duration(seconds: 3), () async {
      Get.toNamed(AppRoutes.homeScreen);
    });
    super.onInit();
  }
}
