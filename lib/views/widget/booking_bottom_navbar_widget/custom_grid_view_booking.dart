import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:test_1/controller/booking_bottom_navbar_screen_controller/booking_bottom_navbar_screen_controller.dart';
import 'package:test_1/views/widget/booking_bottom_navbar_widget/custom_card_grid_view_booking.dart';

class CustomGridViewBooking extends StatelessWidget {
  const CustomGridViewBooking({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(1.h),
      child: GetBuilder<BookingBottomNavbarScreenControllerIMP>(
        init: BookingBottomNavbarScreenControllerIMP(),
        builder: (controller) => GridView.builder(
          itemCount: controller.bookingData!.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 2.w,
            mainAxisSpacing: 2.w,
            childAspectRatio: (1),
          ),
          itemBuilder: (context, index) => CustomCardGridViewBooking(
            onCardTap: () {
              controller.goToBookingPageDetails(index);
            },
            bookinID: controller.bookingData![index].id.toString(),
            nameOwner: controller.bookingData![index].user!.name!,
            nameProperty: controller.bookingData![index].property!.name!,
            priceProperty: controller.bookingData![index].property!.price!,
            startDate: controller.bookingData![index].startDate!,
            endDate: controller.bookingData![index].endDate!,
          ),
        ),
      ),
    );
  }
}
