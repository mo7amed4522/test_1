// ignore_for_file: unused_field, avoid_print, prefer_interpolation_to_compose_strings, unused_local_variable

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:test_1/core/constant/curd.dart';
import 'package:test_1/core/constant/link_api.dart';
import 'package:test_1/core/constant/loader.dart';
import 'package:test_1/core/routes/route.dart';
import 'package:test_1/views/widget/create_new_property_widget/bottom_sheet.dart';
import 'package:test_1/views/widget/create_new_user_widget/bottom_sheet.dart';

abstract class CreateNewPropertyController extends GetxController {
  void onCamraTap();
  void onVideoTap();
  void onBackTap();
  void onSaveTap();
}

class CreateNewPropertyControllerIMP extends CreateNewPropertyController {
  late TextEditingController nameController;
  late TextEditingController descriptionController;
  late TextEditingController priceController;
  late TextEditingController locationController;
  final ImagePicker _picker = ImagePicker();
  List<XFile>? imageFileList = [];
  Crud curd = Crud();

  File? videoFile;
  // =================== UserID should have in login access ============================//
  @override
  void onInit() {
    nameController = TextEditingController();
    descriptionController = TextEditingController();
    priceController = TextEditingController();
    locationController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    nameController.dispose();
    descriptionController.dispose();
    priceController.dispose();
    locationController.dispose();
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

  Future<void> pickedMultiyImage() async {
    final List<XFile> selectedImages = await _picker.pickMultiImage();
    if (selectedImages.isNotEmpty) {
      imageFileList!.addAll(selectedImages);
    } else {
      print("Image List Length:" + imageFileList!.length.toString());
      update();
    }
  }

  @override
  void onBackTap() {
    Get.back();
  }

  @override
  void onCamraTap() {
    Get.bottomSheet(
      BottomSheetPropertyMediaWidget(
        title: 'photo'.tr,
        hintText: 'photo1'.tr,
        secText:
            'Upload multiple photos for your property to increase your visibility',
        onGalleryTap: pickedMultiyImage,
      ),
    );
  }

  @override
  void onVideoTap() {
    Get.bottomSheet(
      BottomSheetMediaWidget(
        title: 'Video',
        hintText: 'Upload your property video',
        secText: 'You should upload a property video',
        onCameraTap: pickVideoCamera,
        onGalleryTap: pickVideoGallery,
      ),
    );
  }

  Future postNewProperty() async {
    Loader().lottieLoader();
    var response = await curd.postRequest(
      ApiLink.crateNewPropertty,
      {
        'name': nameController.text,
        'description': descriptionController.text,
        'price': priceController.text,
        'location': locationController.text,
        'images': imageFileList.toString(),
        'video': videoFile.toString(),
      },
    );
    if (response != null) {
      Get.back();
      update();
      Get.offAllNamed(AppRoutes.homeScreen);
    } else {
      Get.snackbar('Error !!', "Error while Save New Property",
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  @override
  void onSaveTap() {
    Get.snackbar(
        'Error !!', "Can not create new Propety Without UserID Exit is Login",
        snackPosition: SnackPosition.BOTTOM);
  }
}
