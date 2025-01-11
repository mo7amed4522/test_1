import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:test_1/controller/setting_bottom_navbar_screen_controller/setting_bottom_navbar_screen_controller.dart';
import 'package:test_1/views/widget/setting_bottom_navbar_widget/circle_avatar_widget.dart';
import 'package:test_1/views/widget/setting_bottom_navbar_widget/custom_card_title.dart';

class SettingBottomNavbarScreen extends StatelessWidget {
  const SettingBottomNavbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SettingBottomNavbarScreenControllerIMP>(
      init: SettingBottomNavbarScreenControllerIMP(),
      builder: (controller) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 2.h),
          Center(child: CircleAvatarWidget()),
          Expanded(
            child: SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: Get.height - 30.h),
                child: IntrinsicHeight(
                  child: Column(
                    children: [
                      SizedBox(height: 5.h),
                      CustomCardTitleWidget(
                          titleName: 'bodytheme1'.tr,
                          onCardTB: controller.onChngeThemesClick),
                      CustomCardTitleWidget(
                          titleName: 'lang'.tr, onCardTB: () {}),
                      CustomCardTitleWidget(
                          titleName: 'Create New User',
                          onCardTB: controller.goToCreateNewUser),
                      CustomCardTitleWidget(
                          titleName: 'Create New Property',
                          onCardTB: controller.goToCreateNewProperty),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
