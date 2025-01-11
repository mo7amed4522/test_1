import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:test_1/controller/create_new_property_controller/create_new_property_controller.dart';
import 'package:test_1/core/assets/app_assets.dart';
import 'package:test_1/views/widget/create_new_property_widget/create_new_property_body.dart';
import 'package:test_1/views/widget/create_new_property_widget/upload_multi_photos.dart';

class CreateNewPropertyScreen extends StatelessWidget {
  const CreateNewPropertyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<CreateNewPropertyControllerIMP>(
        init: CreateNewPropertyControllerIMP(),
        builder: (controller) => Column(
          children: [
            SizedBox(height: 8.h),
            UploadMultiPhotos(
              onBackTep: controller.onBackTap,
              onCameraTap: controller.onCamraTap,
              backgroundImage: Image.asset(
                AppPhotoLink.empity_image,
              ),
            ),
            CreateNewPropertyBody(),
          ],
        ),
      ),
    );
  }
}
