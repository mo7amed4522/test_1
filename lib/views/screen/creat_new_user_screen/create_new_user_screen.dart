import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:test_1/controller/create_new_user_controller.dart/create_new_user_controller.dart';
import 'package:test_1/core/assets/app_assets.dart';
import 'package:test_1/views/widget/create_new_user_widget/creat_new_user_body.dart';
import 'package:test_1/views/widget/create_new_user_widget/upload_image.dart';

class CreateNewUserScreen extends StatelessWidget {
  const CreateNewUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<CreateNewUserControllerIMP>(
        init: CreateNewUserControllerIMP(),
        builder: (controller) => Column(
          children: [
            SizedBox(height: 8.h),
            UploadImageWidget(
              onCameraTap: controller.onCamraTap,
              onBackTep: controller.onBackTap,
              backgroundImage: controller.image == null
                  ? Image.asset(AppPhotoLink.empity_image)
                  : Image.file(controller.image!, fit: BoxFit.fill),
            ),
            CreatNewUserBody(),
          ],
        ),
      ),
    );
  }
}
