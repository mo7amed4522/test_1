import 'package:get/get.dart';
import 'package:test_1/core/routes/route.dart';
import 'package:test_1/model/property_data_model.dart';

abstract class PropertyPageDetailsController extends GetxController {
  void goBack();
  void goToNewBooking();
}

class PropertyPageDetailsControllerImp extends PropertyPageDetailsController {
  PropertyData propertyData = Get.arguments['propertyPageDetails'];
  @override
  void goBack() {
    Get.back();
  }

  @override
  void goToNewBooking() {
    Get.toNamed(
      AppRoutes.crateNewBooking,
      arguments: {
        'id_property': propertyData.id,
        'name_property': propertyData.name,
        'price_property': propertyData.price,
        'location_property': propertyData.location,
      },
    );
  }
}
