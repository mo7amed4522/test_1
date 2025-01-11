import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:test_1/controller/booking_page_details_controller/booking_page_details_controller.dart';
import 'package:test_1/views/widget/booking_page_details_widget/booking_page_details_body_widget.dart';
import 'package:test_1/views/widget/booking_page_details_widget/center_name_booking_widget.dart';

class BookingPageDetails extends StatelessWidget {
  const BookingPageDetails({super.key});

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
      body: GetBuilder<BookingPageDetailsControllerImp>(
        init: BookingPageDetailsControllerImp(),
        builder: (controller) => Column(
          children: [
            SizedBox(height: 2.h),
            CenterNameBookingWidget(
              onPressed: controller.goBack,
              booking_id: controller.bookingData.id!.toString(),
            ),
            SizedBox(
              height: Get.height - 17.h,
              child: SingleChildScrollView(
                child: BookingPageDetailsBodyWidget(
                  ownerName: controller.bookingData.user!.name!,
                  roler_booking: controller.bookingData.user!.role!,
                  property_name: controller.bookingData.property!.name!,
                  property_price: controller.bookingData.property!.price!,
                  start_date: controller.bookingData.startDate!,
                  end_date: controller.bookingData.endDate!,
                  status_booking: controller.bookingData.status!,
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
