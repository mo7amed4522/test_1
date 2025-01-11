// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:test_1/controller/booking_bottom_navbar_screen_controller/booking_bottom_navbar_screen_controller.dart';

class CustomCardBooking extends StatelessWidget {
  const CustomCardBooking({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BookingBottomNavbarScreenControllerIMP>(
      init: BookingBottomNavbarScreenControllerIMP(),
      builder: (controller) => Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        child: ListView.separated(
          itemCount: controller.bookingData!.length,
          separatorBuilder: (context, index) => SizedBox(height: 7),
          itemBuilder: (context, index) => Stack(
            alignment: AlignmentDirectional.topCenter,
            children: [
              InkWell(
                onTap: () {
                  controller.goToBookingPageDetails(index);
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Theme.of(context).colorScheme.error),
                  child: SizedBox(
                    width: Get.width,
                    height: Get.height / 6,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(height: 9),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 9.sp, vertical: 9.sp),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'owner :'.tr + " ",
                                style: GoogleFonts.ptSerif(
                                  textStyle:
                                      Theme.of(context).textTheme.labelMedium,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17.sp,
                                ),
                              ),
                              Text(
                                controller.bookingData![index].user!.name!,
                                style: GoogleFonts.poppins(
                                  textStyle:
                                      Theme.of(context).textTheme.bodyMedium,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 9.sp, vertical: 9.sp),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'name :'.tr + " ",
                                style: GoogleFonts.ptSerif(
                                  textStyle:
                                      Theme.of(context).textTheme.labelMedium,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17.sp,
                                ),
                              ),
                              Text(
                                controller.bookingData![index].property!.name!,
                                style: GoogleFonts.poppins(
                                  textStyle:
                                      Theme.of(context).textTheme.bodyMedium,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 9.sp, vertical: 9.sp),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'price :'.tr + " ",
                                style: GoogleFonts.ptSerif(
                                  textStyle:
                                      Theme.of(context).textTheme.labelMedium,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17.sp,
                                ),
                              ),
                              Text(
                                controller.bookingData![index].property!.price!,
                                style: GoogleFonts.poppins(
                                  textStyle:
                                      Theme.of(context).textTheme.bodyMedium,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 9.sp, vertical: 9.sp),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'startdate'.tr + " ",
                                    style: GoogleFonts.ptSerif(
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .labelMedium,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17.sp,
                                    ),
                                  ),
                                  Text(
                                    controller.bookingData![index].startDate!,
                                    style: GoogleFonts.poppins(
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .bodyMedium,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 14.sp,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 2.w),
                              Row(
                                children: [
                                  Text(
                                    'end_date'.tr + " ",
                                    style: GoogleFonts.ptSerif(
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .labelMedium,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17.sp,
                                    ),
                                  ),
                                  Text(
                                    controller.bookingData![index].endDate!,
                                    style: GoogleFonts.poppins(
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .bodyMedium,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 14.sp,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
