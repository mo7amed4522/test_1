// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:test_1/controller/create_new_booking_controller/create_new_booking_controller.dart';
import 'package:test_1/core/assets/app_assets.dart';
import 'package:test_1/views/widget/create_new_booking_widget/create_new_booking_body.dart';

import 'package:test_1/views/widget/create_new_booking_widget/top_story_line.dart';

class CreateNewBookingScreen extends StatelessWidget {
  const CreateNewBookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController();
    return Scaffold(
      body: GetBuilder<CreateNewBookingControllerIMP>(
        init: CreateNewBookingControllerIMP(),
        builder: (controller) => Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(17.sp),
                      topRight: Radius.circular(17.sp)),
                  child: SizedBox(
                    height: 40.h,
                    child: PageView.builder(
                        controller: pageController,
                        itemCount: 4,
                        itemBuilder: (context, snapshot) {
                          return Image.asset(
                            AppPhotoLink.avatar,
                            width: Get.width,
                            height: 40.h,
                            fit: BoxFit.cover,
                            errorBuilder: (context, i, n) => Image.asset(
                              AppPhotoLink.logo,
                              height: 20.h,
                              width: Get.width,
                              fit: BoxFit.cover,
                            ),
                          );
                        }),
                  ),
                ),
                Positioned(
                  top: 6.h,
                  right: 0,
                  left: 0,
                  child: TopStoryLineWidget(pageController: pageController),
                ),
                Positioned(
                  top: 5.h,
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color:
                          Theme.of(context).colorScheme.error.withOpacity(0.30),
                    ),
                    child: Center(
                      child: Container(
                        height: 40,
                        width: 40,
                        padding: EdgeInsets.only(right: 0.0001),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Theme.of(context)
                              .colorScheme
                              .onBackground
                              .withOpacity(0.60),
                        ),
                        child: IconButton(
                          onPressed: controller.goBack,
                          icon: Icon(
                            Icons.arrow_back_ios_new,
                            color: Theme.of(context).primaryColor,
                            size: 20.sp,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            CreateNewBookingBody(),
          ],
        ),
      ),
    );
  }
}
