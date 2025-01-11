// ignore_for_file: must_be_immutable, non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';
import 'package:test_1/core/assets/app_assets.dart';
import 'package:test_1/views/widget/user_page_details_widget/custom_button_widget_user.dart';

class PropertyPageBodyWidget extends StatelessWidget {
  String propertyName;
  String des_property;
  String location_property;
  String price_property;
  String owner_name;
  String role_property;
  void Function() ontap_edit;
  void Function() ontap_delete;
  final bool isVisible;
  final VoidCallback ontap_booking;
  PropertyPageBodyWidget({
    super.key,
    required this.propertyName,
    required this.des_property,
    required this.location_property,
    required this.price_property,
    required this.owner_name,
    required this.role_property,
    required this.ontap_edit,
    required this.ontap_delete,
    required this.isVisible,
    required this.ontap_booking,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.sp, vertical: 5.sp),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //===================== PROPERTY Name Tag =================== //
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
                    textStyle: Theme.of(context).textTheme.labelMedium,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.sp,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 25.sp, right: 8.sp, bottom: 8.sp),
            child: Text(
              propertyName,
              style: GoogleFonts.poppins(
                textStyle: Theme.of(context).textTheme.bodyMedium,
                fontWeight: FontWeight.normal,
                fontSize: 15.sp,
              ),
            ),
          ),
          //===================== DESCRIPTION Name Tag =================== //
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(8.sp),
                child: Icon(
                  CupertinoIcons.envelope_open_fill,
                  size: 20.sp,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.sp),
                child: Text(
                  'des_property'.tr,
                  style: GoogleFonts.ptSerif(
                    textStyle: Theme.of(context).textTheme.labelMedium,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.sp,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 25.sp, right: 8.sp, bottom: 8.sp),
            child: Text(
              des_property,
              style: GoogleFonts.poppins(
                textStyle: Theme.of(context).textTheme.bodyMedium,
                fontWeight: FontWeight.normal,
                fontSize: 15.sp,
              ),
            ),
          ),
          //===================== LOCATION Name Tag =================== //
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(8.sp),
                child: Icon(
                  CupertinoIcons.location,
                  size: 20.sp,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.sp),
                child: Text(
                  'location_property'.tr,
                  style: GoogleFonts.ptSerif(
                    textStyle: Theme.of(context).textTheme.labelMedium,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.sp,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 25.sp, right: 8.sp, bottom: 8.sp),
            child: Text(
              location_property,
              style: GoogleFonts.poppins(
                textStyle: Theme.of(context).textTheme.bodyMedium,
                fontWeight: FontWeight.normal,
                fontSize: 15.sp,
              ),
            ),
          ),
          //===================== PRICE Name Tag =================== //
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
                padding: EdgeInsets.all(8.sp),
                child: Text(
                  'price :'.tr,
                  style: GoogleFonts.ptSerif(
                    textStyle: Theme.of(context).textTheme.labelMedium,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.sp,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0.sp),
                child: Text(
                  price_property,
                  style: GoogleFonts.poppins(
                    textStyle: Theme.of(context).textTheme.bodyMedium,
                    fontWeight: FontWeight.normal,
                    fontSize: 15.sp,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 1.h),
          //===================== OWNER NAME  &&  ROLE Tag =================== //
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
                    textStyle: Theme.of(context).textTheme.labelMedium,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.sp,
                  ),
                ),
              ),
              SizedBox(width: 15.w),
              Padding(
                padding: EdgeInsets.all(8.sp),
                child: Icon(
                  CupertinoIcons.person_crop_circle_fill_badge_checkmark,
                  size: 20.sp,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.sp),
                child: Text(
                  'role'.tr,
                  style: GoogleFonts.ptSerif(
                    textStyle: Theme.of(context).textTheme.labelMedium,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.sp,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding:
                    EdgeInsets.only(left: 25.sp, right: 8.sp, bottom: 8.sp),
                child: Text(
                  owner_name,
                  style: GoogleFonts.poppins(
                    textStyle: Theme.of(context).textTheme.bodyMedium,
                    fontWeight: FontWeight.normal,
                    fontSize: 15.sp,
                  ),
                ),
              ),
              SizedBox(width: 20.w),
              Padding(
                padding:
                    EdgeInsets.only(left: 25.sp, right: 8.sp, bottom: 8.sp),
                child: Text(
                  role_property,
                  style: GoogleFonts.poppins(
                    textStyle: Theme.of(context).textTheme.bodyMedium,
                    fontWeight: FontWeight.normal,
                    fontSize: 15.sp,
                  ),
                ),
              ),
            ],
          ),
          //===================== VIDEO Tag =================== //
          Container(
            height: 20.h,
            margin: EdgeInsets.all(10.sp),
            padding: EdgeInsets.all(10.sp),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Theme.of(context).textTheme.bodyMedium!.color,
                border: Border.all(width: 3.0),
                borderRadius: BorderRadius.all(Radius.circular(10.sp)),
                boxShadow: [
                  BoxShadow(blurRadius: 10, offset: Offset(1, 3))
                ] // Make rounded corner of border
                ),
            child: Lottie.asset(
              AppPhotoLink.load,
              fit: BoxFit.fill,
            ),
          ),
          //===================== BUTTONS Tag =================== //
          SizedBox(height: 2.h),
          Container(
            padding: EdgeInsets.only(bottom: 2.h, left: 1.h, right: 1.h),
            alignment: Alignment.bottomCenter,
            child: CustomButton(
              ontap: ontap_booking,
              width: Get.width - 0.9.w,
              assets_image: AppPhotoLink.booking_svg,
              buttonName: "Booking",
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 3.h, left: 1.h, right: 1.h),
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Visibility(
                  visible: isVisible,
                  child: CustomButton(
                    ontap: ontap_edit,
                    width: Get.width / 2.2,
                    assets_image: AppPhotoLink.edit_svg,
                    buttonName: "editproperty".tr,
                  ),
                ),
                Visibility(
                  visible: isVisible,
                  child: CustomButton(
                    width: Get.width / 2.2,
                    ontap: ontap_delete,
                    assets_image: AppPhotoLink.delete_svg,
                    buttonName: "delete".tr,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
