import 'package:get/get.dart';
import 'package:test_1/model/booking_data_model.dart';

abstract class BookingPageDetailsController extends GetxController {
  void goBack();
}

class BookingPageDetailsControllerImp extends BookingPageDetailsController {
  BookingData bookingData = Get.arguments['bookingPageDetails'];

  @override
  void goBack() {
    Get.back();
  }
}
