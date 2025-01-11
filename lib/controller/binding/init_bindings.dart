import 'package:get/get.dart';
import 'package:test_1/core/constant/curd.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(Crud());
  }
}
