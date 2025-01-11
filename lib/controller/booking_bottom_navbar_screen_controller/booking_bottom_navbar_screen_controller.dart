// ignore_for_file: prefer_final_fields, unused_field
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:test_1/core/constant/constant.dart';
import 'package:test_1/core/constant/curd.dart';
import 'package:test_1/core/constant/link_api.dart';
import 'package:test_1/core/routes/route.dart';
import 'package:test_1/model/booking_data_model.dart';

abstract class BookingBottomNavbarScreenController extends GetxController {
  void goToBookingPageDetails(int index);
}

class BookingBottomNavbarScreenControllerIMP
    extends BookingBottomNavbarScreenController {
  Crud _crud = Crud();
  bool isLoading = false;
  List<BookingData>? bookingData;

  @override
  void onInit() {
    if (bookingDataConst.isEmpty) {
      getBookingData();
    } else {
      bookingData = bookingDataConst;
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

  getBookingData() async {
    isLoading = true;
    update();
    var response = await _crud.getRequest(ApiLink.getAllBooking);
    if (response != null) {
      bookingDataConst =
          List<BookingData>.from(response.map((x) => BookingData.fromJson(x)));
      bookingData = bookingDataConst;
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
  void goToBookingPageDetails(int index) {
    Get.toNamed(AppRoutes.bookingDetails, arguments: {
      'bookingPageDetails': bookingData![index],
    });
  }
}
