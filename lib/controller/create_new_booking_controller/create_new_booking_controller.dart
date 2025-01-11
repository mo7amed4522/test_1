// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_1/core/constant/curd.dart';
import 'package:test_1/core/constant/link_api.dart';
import 'package:test_1/core/constant/loader.dart';
import 'package:test_1/core/routes/route.dart';

abstract class CreateNewBookingController extends GetxController {
  void goBack();
  void createNewBooking();
  void dataPicker();
}

class CreateNewBookingControllerIMP extends CreateNewBookingController {
  int proerty_id = Get.arguments['id_property'];
  String name_property = Get.arguments['name_property'];
  String price_property = Get.arguments['price_property'];
  String location_property = Get.arguments['location_property'];
  DateTime start_date = DateTime.now();
  DateTime endData = DateTime.now();
  String status = 'pending';
  Crud curd = Crud();

  @override
  void goBack() {
    Get.back();
  }

  Future<void> postCreateNewBooking() async {
    Loader().lottieLoader();
    var response = await curd.postRequest(
      ApiLink.createNewBooking,
      {
        'user_id': 73,
        'property_id': proerty_id,
        'start_date': start_date.toString(),
        'end_date': endData.toString(),
        'status': status,
      },
    );
    if (response != null) {
      Get.back();
      update();
      Get.offAllNamed(AppRoutes.homeScreen);
    } else {
      Get.back();
      Get.snackbar('Error !!', "Error while Save New Booking",
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  @override
  void createNewBooking() {
    Get.snackbar('Error !!', "Error I must have user data store in shreedPref",
        snackPosition: SnackPosition.BOTTOM);
  }

  Future<void> selectDateStart(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: start_date, // initial date
      firstDate: DateTime(2000), // earliest selectable date
      lastDate: DateTime(2101), // latest selectable date
    );

    if (picked != null && picked != start_date) start_date = picked;
    update();
  }

  Future<void> selectDateEnd(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: endData, // initial date
      firstDate: DateTime(2000), // earliest selectable date
      lastDate: DateTime(2101), // latest selectable date
    );

    if (picked != null && picked != endData) endData = picked;
    update();
  }

  @override
  void dataPicker() {
    // TODO: implement dataPicker
  }
}
