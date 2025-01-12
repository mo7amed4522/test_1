import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_1/controller/property_bottom_navbar_screen_controller/property_bottom_navbar_screen_controller.dart';
import 'package:test_1/core/constant/custom_card_shimmer.dart';
import 'package:test_1/core/constant/custom_grid_view_shimmer.dart';
import 'package:test_1/core/constant/responsive.dart';
import 'package:test_1/views/widget/property_bottom_navbar_widget/custom_card_property.dart';
import 'package:test_1/views/widget/property_bottom_navbar_widget/custom_grid_view_property.dart';

class PropertyBottomNavbarScreen extends StatelessWidget {
  const PropertyBottomNavbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PropertyBottomNavbarScreenControllerIMP>(
        init: PropertyBottomNavbarScreenControllerIMP(),
        builder: (controller) => controller.isLoading == false
            ? Responsive(
                mobile: CustomCardShimmer(),
                tablet: CustomGridViewShimmer(),
              )
            : controller.propertyData == null
                ? Center(
                    child: Text(
                      "No Data",
                      style: GoogleFonts.poppins(
                        textStyle: Theme.of(context).textTheme.displayLarge,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                : Responsive(
                    mobile: CustomCardProperty(),
                    tablet: CustomGridViewProperty(),
                  ));
  }
}
