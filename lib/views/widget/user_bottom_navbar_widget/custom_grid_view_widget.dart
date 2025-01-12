import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:test_1/controller/user_bottom_navbar_screen_controller/user_bottom_navbar_screen_controller.dart';
import 'package:test_1/views/widget/user_bottom_navbar_widget/custom_card_tablet.dart';

class CustomGridViewWidget extends StatelessWidget {
  const CustomGridViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(1.h),
      child: GetBuilder<UserBottomNavbarScreenControllerIMP>(
        init: UserBottomNavbarScreenControllerIMP(),
        builder: (controller) => GridView.builder(
          itemCount: controller.userData!.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 2.w,
            mainAxisSpacing: 2.w,
            childAspectRatio: (1),
          ),
          itemBuilder: (context, index) => CustomCardTablet(
            onCardBtn: () {
              controller.goToUserPageDetails(index);
            },
            photoImage: controller.userData![index].profileImage!,
            userName: controller.userData![index].name!,
            email: controller.userData![index].email!,
            phone: controller.userData![index].phone!,
          ),
        ),
      ),
    );
  }
}
