import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_1/controller/booking_bottom_navbar_screen_controller/booking_bottom_navbar_screen_controller.dart';
import 'package:test_1/core/constant/custom_card_shimmer.dart';
import 'package:test_1/core/constant/custom_grid_view_shimmer.dart';
import 'package:test_1/core/constant/responsive.dart';
import 'package:test_1/views/widget/booking_bottom_navbar_widget/custom_card_booking.dart';
import 'package:test_1/views/widget/booking_bottom_navbar_widget/custom_grid_view_booking.dart';

class BookingBottomNavbarScreen extends StatelessWidget {
  const BookingBottomNavbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BookingBottomNavbarScreenControllerIMP>(
      init: BookingBottomNavbarScreenControllerIMP(),
      builder: (controller) => controller.isLoading == false
          ? Responsive(
              mobile: CustomCardShimmer(),
              tablet: CustomGridViewShimmer(),
            )
          : controller.bookingData == null
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
                  mobile: CustomCardBooking(), tablet: CustomGridViewBooking()),
    );
  }
}
