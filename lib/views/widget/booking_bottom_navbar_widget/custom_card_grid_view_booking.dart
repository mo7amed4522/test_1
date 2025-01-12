// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class CustomCardGridViewBooking extends StatelessWidget {
  final VoidCallback onCardTap;
  final String nameOwner;
  final String nameProperty;
  final String priceProperty;
  final String startDate;
  final String endDate;
  final String bookinID;
  const CustomCardGridViewBooking({
    super.key,
    required this.onCardTap,
    required this.nameOwner,
    required this.nameProperty,
    required this.priceProperty,
    required this.startDate,
    required this.endDate,
    required this.bookinID,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
          onTap: onCardTap,
          child: Container(
            height: 40.h,
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
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Booking  ',
                          style: GoogleFonts.ptSerif(
                            textStyle: Theme.of(context).textTheme.labelMedium,
                            fontWeight: FontWeight.bold,
                            fontSize: 17.sp,
                          ),
                        ),
                        Text(
                          bookinID,
                          style: GoogleFonts.poppins(
                            textStyle: Theme.of(context).textTheme.bodyMedium,
                            fontWeight: FontWeight.normal,
                            fontSize: 17.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 9.sp, vertical: 9.sp),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'owner :'.tr + " ",
                          style: GoogleFonts.ptSerif(
                            textStyle: Theme.of(context).textTheme.labelMedium,
                            fontWeight: FontWeight.bold,
                            fontSize: 17.sp,
                          ),
                        ),
                        SizedBox(
                          width: Get.width / 3.1,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Text(
                              nameOwner,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.poppins(
                                textStyle:
                                    Theme.of(context).textTheme.bodyMedium,
                                fontWeight: FontWeight.normal,
                                fontSize: 14.sp,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 9.sp, vertical: 9.sp),
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'name :'.tr + " ",
                          style: GoogleFonts.ptSerif(
                            textStyle: Theme.of(context).textTheme.labelMedium,
                            fontWeight: FontWeight.bold,
                            fontSize: 17.sp,
                          ),
                        ),
                        SizedBox(
                          width: Get.width / 3,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Text(
                              nameProperty,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.poppins(
                                textStyle:
                                    Theme.of(context).textTheme.bodyMedium,
                                fontWeight: FontWeight.normal,
                                fontSize: 14.sp,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 9.sp, vertical: 9.sp),
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'price :'.tr + " ",
                          style: GoogleFonts.ptSerif(
                            textStyle: Theme.of(context).textTheme.labelMedium,
                            fontWeight: FontWeight.bold,
                            fontSize: 17.sp,
                          ),
                        ),
                        SizedBox(
                          width: Get.width / 3,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Text(
                              priceProperty,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.poppins(
                                textStyle:
                                    Theme.of(context).textTheme.bodyMedium,
                                fontWeight: FontWeight.normal,
                                fontSize: 14.sp,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 9.sp, vertical: 9.sp),
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Text(
                              'startdate'.tr + " ",
                              style: GoogleFonts.ptSerif(
                                textStyle:
                                    Theme.of(context).textTheme.labelMedium,
                                fontWeight: FontWeight.bold,
                                fontSize: 17.sp,
                              ),
                            ),
                            SizedBox(
                              width: Get.width / 4.2,
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Text(
                                  startDate,
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.poppins(
                                    textStyle:
                                        Theme.of(context).textTheme.bodyMedium,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14.sp,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 9.sp, vertical: 9.sp),
                    child: Row(
                      children: [
                        Text(
                          'end_date'.tr + " ",
                          style: GoogleFonts.ptSerif(
                            textStyle: Theme.of(context).textTheme.labelMedium,
                            fontWeight: FontWeight.bold,
                            fontSize: 17.sp,
                          ),
                        ),
                        SizedBox(
                          width: Get.width / 4,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Text(
                              endDate,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.poppins(
                                textStyle:
                                    Theme.of(context).textTheme.bodyMedium,
                                fontWeight: FontWeight.normal,
                                fontSize: 14.sp,
                              ),
                            ),
                          ),
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
    );
  }
}
