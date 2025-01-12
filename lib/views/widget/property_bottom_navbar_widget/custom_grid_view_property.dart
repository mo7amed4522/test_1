import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:test_1/controller/property_bottom_navbar_screen_controller/property_bottom_navbar_screen_controller.dart';
import 'package:test_1/views/widget/property_bottom_navbar_widget/custom_card_grid_property.dart';

class CustomGridViewProperty extends StatelessWidget {
  const CustomGridViewProperty({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(1.h),
      child: GetBuilder<PropertyBottomNavbarScreenControllerIMP>(
        init: PropertyBottomNavbarScreenControllerIMP(),
        builder: (controller) => GridView.builder(
          itemCount: controller.propertyData!.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 2.w,
            mainAxisSpacing: 2.w,
            childAspectRatio: (1),
          ),
          itemBuilder: (context, index) => CustomCardGridProperty(
            onCardTap: () {
              controller.goToPropertyPageDetails(index);
            },
            nameProperty: controller.propertyData![index].name!,
            ownerProperty: controller.propertyData![index].user!.name!,
            priceProperty: controller.propertyData![index].price!,
          ),
        ),
      ),
    );
  }
}
