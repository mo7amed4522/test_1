// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:test_1/core/assets/app_assets.dart';
import 'package:test_1/views/widget/user_page_details_widget/icon_button_widget.dart';

class ImageUserViewWidget extends StatelessWidget {
  String imageURL;
  void Function() onPressed;
  ImageUserViewWidget(
      {super.key, required this.imageURL, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(17), topRight: Radius.circular(17)),
          child: SizedBox(
            height: Get.height / 3,
            child: Image.network(
              imageURL,
              width: Get.width,
              fit: BoxFit.fill,
              errorBuilder: (context, i, n) => Image.asset(
                AppPhotoLink.logo,
                height: 20,
                width: Get.width,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(
          top: 1.h,
          left: 2.h,
          child: IconButtonWidget(
            onPressed: onPressed,
            icon: Icons.arrow_back_ios_new_outlined,
          ),
        ),
      ],
    );
  }
}
