// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:test_1/controller/user_page_details_controller/user_page_details_controller.dart';
import 'package:test_1/views/widget/user_page_details_widget/image_widget.dart';
import 'package:test_1/views/widget/user_page_details_widget/user_page_body_widget.dart';

class UserPageDetails extends StatelessWidget {
  const UserPageDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
      ),
      body: GetBuilder<UserPageDetailsControllerImp>(
        init: UserPageDetailsControllerImp(),
        builder: (controller) => Column(
          children: [
            ImageUserViewWidget(
              imageURL: controller.userData.profileImage!,
              onPressed: controller.goBack,
            ),
            SizedBox(
              height: Get.height - Get.height / 2.4,
              child: SingleChildScrollView(
                child: UserPageBodyWidget(
                  userName: controller.userData.name!,
                  email: controller.userData.email!,
                  phone: controller.userData.phone!,
                  role: controller.userData.role!,
                  ontap_edit: () {},
                  ontap_delete: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
