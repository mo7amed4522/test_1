import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:test_1/core/constant/curd.dart';
import 'package:test_1/core/constant/link_api.dart';
import 'package:test_1/core/constant/loader.dart';
import 'package:test_1/core/routes/route.dart';
import 'dart:io';

import 'package:test_1/views/widget/create_new_user_widget/bottom_sheet.dart';

abstract class CreateNewUserController extends GetxController {
  void onCamraTap();
  void chageValue(String val);
  void onVideoTap();
  void onBackTap();
  void onSaveTap();
}

class CreateNewUserControllerIMP extends CreateNewUserController {
  late TextEditingController nameController;
  late TextEditingController emailController;
  late TextEditingController phoneController;
  File? image;
  File? videoFile;
  final ImagePicker _picker = ImagePicker();
  String? chosenValue;
  Crud curd = Crud();
  List<String> choice = [
    'owner',
    'admin',
    'client',
  ];
  @override
  void onInit() {
    nameController = TextEditingController();
    emailController = TextEditingController();
    phoneController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    super.dispose();
  }

  // Function to pick image from gallery
  Future<void> pickVideoGallery() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickVideo(source: ImageSource.gallery);
    if (pickedFile != null) {
      videoFile = File(pickedFile.path);
      update();
    }
  }

  // Function to pick image from camera
  Future<void> pickVideoCamera() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickVideo(source: ImageSource.camera);
    if (pickedFile != null) {
      videoFile = File(pickedFile.path);
      update();
    }
  }

  // Function to pick image from gallery
  Future<void> pickImageFromGallery() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      image = File(pickedFile.path);
    } else {
      if (kDebugMode) {
        print('No image selected.');
      }
    }
    update();
  }

  // Function to take a picture using the camera
  Future<void> pickImageFromCamera() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      image = File(pickedFile.path);
    } else {
      if (kDebugMode) {
        print('No image captured.');
      }
    }
    update();
  }

  @override
  void onCamraTap() {
    Get.bottomSheet(
      BottomSheetMediaWidget(
        title: 'photo'.tr,
        hintText: 'photo1'.tr,
        secText: 'photo2'.tr,
        onCameraTap: pickImageFromCamera,
        onGalleryTap: pickImageFromGallery,
      ),
    );
  }

  @override
  void chageValue(String val) {
    chosenValue = val;
    if (kDebugMode) {
      print(chosenValue);
    }
    update();
  }

  @override
  void onVideoTap() {
    Get.bottomSheet(
      BottomSheetMediaWidget(
        title: 'Video',
        hintText: 'Upload your intro',
        secText: 'You should upload an intro video about you to access',
        onCameraTap: pickVideoCamera,
        onGalleryTap: pickVideoGallery,
      ),
    );
  }

  @override
  void onBackTap() {
    Get.back();
  }

  Future postNewUser() async {
    Loader().lottieLoader();
    var response = await curd.postRequest(
      ApiLink.createNewUser,
      {
        'name': nameController.text,
        'email': emailController.text,
        'phone': phoneController.text,
        'role': chosenValue,
        'profile_image': image.toString(),
        'intro_video': videoFile.toString(),
      },
    );
    if (response != null) {
      Get.back();
      update();
      Get.offAllNamed(AppRoutes.homeScreen);
    } else {
      Get.snackbar('Error !!', "Error while Save New User",
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  @override
  void onSaveTap() {
    if (nameController.text.isEmpty &
        emailController.text.isEmpty &
        phoneController.text.isEmpty &
        chosenValue!.isEmpty &
        image.toString().isEmpty &
        videoFile.toString().isEmpty) {
      Get.snackbar('Sorry !!', "Something is missing",
          snackPosition: SnackPosition.BOTTOM);
    } else {
      postNewUser();
    }
  }
}
