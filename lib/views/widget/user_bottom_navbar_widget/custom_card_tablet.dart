// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:test_1/core/assets/app_assets.dart';

class CustomCardTablet extends StatelessWidget {
  final VoidCallback onCardBtn;
  final String photoImage;
  final String userName;
  final String email;
  final String phone;
  const CustomCardTablet({
    super.key,
    required this.onCardBtn,
    required this.photoImage,
    required this.userName,
    required this.email,
    required this.phone,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onCardBtn,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).cardTheme.color,
          borderRadius: BorderRadius.circular(10.sp),
        ),
        child: Column(
          children: [
            SizedBox(
              width: Get.width,
              height: Get.height / 4,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                child: Image.network(
                  photoImage,
                  width: Get.width / 3,
                  height: Get.height / 2,
                  fit: BoxFit.fill,
                  errorBuilder: (c, n, s) => Image.asset(
                    AppPhotoLink.logo,
                    width: 10,
                    height: Get.height / 6,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 2.w),
              child: Row(
                children: [
                  Text(
                    'Name :'.tr,
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
                        " " + userName,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.poppins(
                          textStyle: Theme.of(context).textTheme.bodyMedium,
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
              padding: EdgeInsets.only(left: 2.w),
              child: Row(
                children: [
                  Text(
                    'Email :'.tr,
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
                        " " + email,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.poppins(
                          textStyle: Theme.of(context).textTheme.bodyMedium,
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
              padding: EdgeInsets.only(left: 2.w),
              child: Row(
                children: [
                  Text(
                    'Phone :'.tr,
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
                        " " + phone,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.poppins(
                          textStyle: Theme.of(context).textTheme.bodyMedium,
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
    );
  }
}
