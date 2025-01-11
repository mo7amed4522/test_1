// ignore_for_file: non_constant_identifier_names, prefer_const_constructors_in_immutables, must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:test_1/core/assets/app_assets.dart';
import 'package:test_1/views/widget/user_page_details_widget/custom_button_widget_user.dart';

class BookingPageDetailsBodyWidget extends StatelessWidget {
  final String ownerName;
  final String roler_booking;
  final String property_name;
  final String property_price;
  final String start_date;
  final String end_date;
  final String status_booking;
  void Function() ontap_edit;
  void Function() ontap_delete;
  BookingPageDetailsBodyWidget({
    super.key,
    required this.ownerName,
    required this.roler_booking,
    required this.property_name,
    required this.property_price,
    required this.start_date,
    required this.end_date,
    required this.status_booking,
    required this.ontap_edit,
    required this.ontap_delete,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.sp, vertical: 5.sp),
      child: Column(
        children: [
          SizedBox(height: 4.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(8.sp),
                child: Icon(
                  CupertinoIcons.exclamationmark_bubble,
                  size: 20.sp,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.sp),
                child: Text(
                  'stauts'.tr,
                  style: GoogleFonts.ptSerif(
                    textStyle: Theme.of(context).textTheme.labelMedium,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.sp,
                  ),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 9.sp, right: 8.sp, bottom: 10.sp),
                child: Text(
                  status_booking,
                  style: GoogleFonts.poppins(
                    textStyle: Theme.of(context).textTheme.bodyMedium,
                    fontWeight: FontWeight.normal,
                    fontSize: 15.sp,
                  ),
                ),
              ),
            ],
          ),
          //=====================  OWNER Tag =================== //
          Padding(
            padding: EdgeInsets.only(top: 5.h),
            child: Row(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.sp),
                          child: Icon(
                            CupertinoIcons.person_alt_circle,
                            size: 20.sp,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.sp),
                          child: Text(
                            'owner_name'.tr,
                            style: GoogleFonts.ptSerif(
                              textStyle:
                                  Theme.of(context).textTheme.labelMedium,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.sp,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 8.sp),
                      child: Text(
                        ownerName,
                        style: GoogleFonts.poppins(
                          textStyle: Theme.of(context).textTheme.bodyMedium,
                          fontWeight: FontWeight.normal,
                          fontSize: 15.sp,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 15.w),
                Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.sp),
                          child: Icon(
                            CupertinoIcons
                                .person_crop_circle_fill_badge_checkmark,
                            size: 20.sp,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.sp),
                          child: Text(
                            'role'.tr,
                            style: GoogleFonts.ptSerif(
                              textStyle:
                                  Theme.of(context).textTheme.labelMedium,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.sp,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 8.sp),
                      child: Text(
                        roler_booking,
                        style: GoogleFonts.poppins(
                          textStyle: Theme.of(context).textTheme.bodyMedium,
                          fontWeight: FontWeight.normal,
                          fontSize: 15.sp,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          //=====================  PROPERTY Tag =================== //
          Padding(
            padding: EdgeInsets.only(top: 4.h),
            child: Row(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.sp),
                          child: Icon(
                            CupertinoIcons.house,
                            size: 20.sp,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.sp),
                          child: Text(
                            'property_name'.tr,
                            style: GoogleFonts.ptSerif(
                              textStyle:
                                  Theme.of(context).textTheme.labelMedium,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.sp,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 8.sp),
                      child: Text(
                        property_name,
                        style: GoogleFonts.poppins(
                          textStyle: Theme.of(context).textTheme.bodyMedium,
                          fontWeight: FontWeight.normal,
                          fontSize: 15.sp,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 10.w),
                Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.sp),
                          child: Icon(
                            CupertinoIcons.money_dollar_circle,
                            size: 20.sp,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 8.sp, bottom: 8.sp, left: 8.sp, right: 4.sp),
                          child: Text(
                            'price'.tr,
                            style: GoogleFonts.ptSerif(
                              textStyle:
                                  Theme.of(context).textTheme.labelMedium,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.sp,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 8.sp, bottom: 8.sp),
                      child: Text(
                        property_price,
                        style: GoogleFonts.poppins(
                          textStyle: Theme.of(context).textTheme.bodyMedium,
                          fontWeight: FontWeight.normal,
                          fontSize: 15.sp,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          //=====================  BooKing Tag =================== //
          Padding(
            padding: EdgeInsets.only(top: 4.h),
            child: Row(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.sp),
                          child: Icon(
                            CupertinoIcons.calendar,
                            size: 20.sp,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.sp),
                          child: Text(
                            'start_date'.tr,
                            style: GoogleFonts.ptSerif(
                              textStyle:
                                  Theme.of(context).textTheme.labelMedium,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.sp,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 8.sp),
                      child: Text(
                        start_date,
                        style: GoogleFonts.poppins(
                          textStyle: Theme.of(context).textTheme.bodyMedium,
                          fontWeight: FontWeight.normal,
                          fontSize: 15.sp,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 19.w),
                Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.sp),
                          child: Icon(
                            CupertinoIcons.calendar,
                            size: 20.sp,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.sp),
                          child: Text(
                            'enddata'.tr,
                            style: GoogleFonts.ptSerif(
                              textStyle:
                                  Theme.of(context).textTheme.labelMedium,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.sp,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 8.sp),
                      child: Text(
                        end_date,
                        style: GoogleFonts.poppins(
                          textStyle: Theme.of(context).textTheme.bodyMedium,
                          fontWeight: FontWeight.normal,
                          fontSize: 15.sp,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          //===================== BUTTONS Tag =================== //
          SizedBox(height: Get.height / 0.4.h),
          Container(
            padding: EdgeInsets.only(bottom: 3.h, left: 1.h, right: 1.h),
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButton(
                  width: Get.width / 2.2,
                  ontap: ontap_edit,
                  assets_image: AppPhotoLink.edit_svg,
                  buttonName: "editbooking".tr,
                ),
                CustomButton(
                  width: Get.width / 2.2,
                  ontap: ontap_delete,
                  assets_image: AppPhotoLink.delete_svg,
                  buttonName: "delete".tr,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
