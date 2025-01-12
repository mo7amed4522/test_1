// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:test_1/controller/home_screen_controller/home_screen_controller.dart';
import 'package:test_1/core/constant/responsive.dart';
import 'package:test_1/views/widget/home_widget/custom_bottom_navbar_tablet_widget.dart';
import 'package:test_1/views/widget/home_widget/custom_bottom_navbar_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: GetBuilder<HomeScreenControllerIMP>(
          init: HomeScreenControllerIMP(),
          builder: (controller) => Column(
            children: [
              SizedBox(height: 6.h),
              SizedBox(
                height: 6.h,
                width: Get.width,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        controller.listOfName[controller.currentIndex],
                        style: GoogleFonts.ptSerif(
                          textStyle: Theme.of(context)
                              .bottomNavigationBarTheme
                              .selectedLabelStyle,
                          fontSize: 23.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Stack(
                    children: [
                      controller.screen[controller.currentIndex],
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Responsive(
                            mobile: const CustomBottomNavBarWidget(),
                            tablet: const CustomBottomNavBarTabletWidget(),
                          )),
                    ],
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
