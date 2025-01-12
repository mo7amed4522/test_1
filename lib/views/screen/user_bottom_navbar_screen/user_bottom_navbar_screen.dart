import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_1/controller/user_bottom_navbar_screen_controller/user_bottom_navbar_screen_controller.dart';
import 'package:test_1/core/constant/custom_card_shimmer.dart';
import 'package:test_1/core/constant/custom_grid_view_shimmer.dart';
import 'package:test_1/core/constant/responsive.dart';
import 'package:test_1/views/widget/user_bottom_navbar_widget/custom_card_user.dart';
import 'package:test_1/views/widget/user_bottom_navbar_widget/custom_grid_view_widget.dart';

class UserBottomNavBarScreen extends StatelessWidget {
  const UserBottomNavBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserBottomNavbarScreenControllerIMP>(
      init: UserBottomNavbarScreenControllerIMP(),
      builder: (controller) => controller.isLoading == false
          ? Responsive(
              mobile: CustomCardShimmer(),
              tablet: CustomGridViewShimmer(),
            )
          : controller.userData == null
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
                  mobile: CustomCardUser(),
                  tablet: CustomGridViewWidget(),
                ),
    );
  }
}
