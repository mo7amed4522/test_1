// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:test_1/core/assets/app_assets.dart';
import 'package:test_1/views/widget/setting_bottom_navbar_widget/custom_card_title.dart';

class BottomSheetThemeWidget extends StatelessWidget {
  final VoidCallback onDarkMode;
  final VoidCallback onLightMode;
  const BottomSheetThemeWidget(
      {super.key, required this.onDarkMode, required this.onLightMode});

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaY: 3, sigmaX: 3),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25), topRight: Radius.circular(25)),
        child: BackdropFilter(
          filter: ImageFilter.blur(
              sigmaY: 10, sigmaX: 10, tileMode: TileMode.mirror),
          child: Stack(
            children: [
              Container(
                  width: Get.width,
                  color: Theme.of(context)
                      .colorScheme
                      .background
                      .withOpacity(0.3)),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                width: Get.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25))),
                child: Column(
                  children: [
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'change'.tr,
                            style: GoogleFonts.poppins(
                              textStyle:
                                  Theme.of(context).textTheme.labelMedium,
                              fontSize: 18.sp,
                            ),
                          ),
                          SizedBox(width: 2.w),
                          Text(
                            'theme'.tr,
                            style: GoogleFonts.poppins(
                              textStyle:
                                  Theme.of(context).textTheme.labelMedium,
                              fontSize: 18.sp,
                            ),
                          ),
                        ]),
                    Expanded(
                      child: Column(
                        children: [
                          SizedBox(height: 2.h),
                          Center(
                            child: Text(
                              'bodytheme1'.tr,
                              style: GoogleFonts.poppins(
                                textStyle:
                                    Theme.of(context).textTheme.displaySmall,
                                fontSize: 16.sp,
                              ),
                            ),
                          ),
                          Center(
                            child: Text(
                              'bodytheme2'.tr,
                              style: GoogleFonts.poppins(
                                textStyle:
                                    Theme.of(context).textTheme.displaySmall,
                                fontSize: 15.sp,
                              ),
                            ),
                          ),
                          SizedBox(height: 3.h),
                          Center(
                              child: SvgPicture.asset(AppPhotoLink.modeLogo,
                                  width: Get.width,
                                  height: 14.h,
                                  fit: BoxFit.contain)),
                          Spacer(),
                          CustomCardButton(
                              titleName: 'darkmode'.tr, onCardTB: onDarkMode),
                          SizedBox(height: 2.h),
                          CustomCardButton(
                              titleName: 'lightmode'.tr, onCardTB: onLightMode),
                        ],
                      ),
                    ),
                    SizedBox(height: 23),
                    SizedBox(
                      width: Get.width / 1.3,
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'cond'.tr,
                              style: GoogleFonts.poppins(
                                textStyle:
                                    Theme.of(context).textTheme.labelSmall,
                                fontSize: 14.sp,
                              ),
                            ),
                            TextSpan(
                              text: 'termuse'.tr,
                              style: GoogleFonts.poppins(
                                textStyle:
                                    Theme.of(context).textTheme.bodySmall,
                                fontSize: 14.sp,
                              ),
                            ),
                            TextSpan(
                              text: "and".tr,
                              style: GoogleFonts.poppins(
                                textStyle:
                                    Theme.of(context).textTheme.labelSmall,
                                fontSize: 14.sp,
                              ),
                            ),
                            TextSpan(
                              text: 'privacypolicy'.tr,
                              style: GoogleFonts.poppins(
                                textStyle:
                                    Theme.of(context).textTheme.bodySmall,
                                fontSize: 14.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 2.h),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
