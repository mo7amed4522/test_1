import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_1/controller/property_page_details_controller/property_page_details_controller.dart';
import 'package:test_1/views/widget/property_page_details_widget/image_property_widget.dart';
import 'package:test_1/views/widget/property_page_details_widget/property_page_body_widget.dart';

class PropertyPageDetails extends StatelessWidget {
  const PropertyPageDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
      ),
      body: GetBuilder<PropertyPageDetailsControllerImp>(
        init: PropertyPageDetailsControllerImp(),
        builder: (controller) => Column(
          children: [
            ImagePropertyWidget(onPressed: controller.goBack),
            SizedBox(
              height: Get.height - Get.height / 2.4,
              child: SingleChildScrollView(
                child: PropertyPageBodyWidget(
                  propertyName: controller.propertyData.name!,
                  des_property: controller.propertyData.description!,
                  location_property: controller.propertyData.location!,
                  price_property: controller.propertyData.price!,
                  owner_name: controller.propertyData.user!.name!,
                  role_property: controller.propertyData.user!.role!,
                  isVisible: false,
                  ontap_booking: controller.goToNewBooking,
                  ontap_edit: () {},
                  ontap_delete: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
