// ignore_for_file: body_might_complete_normally_nullable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:test_1/controller/create_new_user_controller.dart/create_new_user_controller.dart';
import 'package:test_1/core/assets/app_assets.dart';
import 'package:test_1/core/constant/custom_text_editing_controller.dart';
import 'package:test_1/core/func/auth/vaild_input.dart';
import 'package:test_1/views/widget/create_new_user_widget/upload_intro_video_widget.dart';
import 'package:test_1/views/widget/user_page_details_widget/custom_button_widget_user.dart';

class CreatNewUserBody extends StatelessWidget {
  const CreatNewUserBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CreateNewUserControllerIMP>(
      init: CreateNewUserControllerIMP(),
      builder: (controller) => SizedBox(
        height: Get.height / 1.4,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(2.h),
                child: Text(
                  'Name',
                  style: GoogleFonts.ptSerif(
                    textStyle: Theme.of(context).textTheme.labelMedium,
                    fontWeight: FontWeight.bold,
                    fontSize: 17.sp,
                  ),
                ),
              ),
              CustomTextFormFild(
                validator: (value) {
                  return validInput(value!, 5, 60, 'Username');
                },
                lable: 'Name',
                mycontroller: controller.nameController,
                suffixIcon: CupertinoIcons.person_circle_fill,
                hintText: "Enter Your Name",
              ),
              Padding(
                padding: EdgeInsets.all(2.0.h),
                child: Text(
                  'E-Mail',
                  style: GoogleFonts.ptSerif(
                    textStyle: Theme.of(context).textTheme.labelMedium,
                    fontWeight: FontWeight.bold,
                    fontSize: 17.sp,
                  ),
                ),
              ),
              CustomTextFormFild(
                validator: (value) {
                  return validInput(value!, 5, 60, 'email');
                },
                lable: 'Email',
                mycontroller: controller.emailController,
                suffixIcon: CupertinoIcons.mail_solid,
                hintText: "Enter Your E - Mail",
              ),
              Padding(
                padding: EdgeInsets.all(2.0.h),
                child: Text(
                  'Phone',
                  style: GoogleFonts.ptSerif(
                    textStyle: Theme.of(context).textTheme.labelMedium,
                    fontWeight: FontWeight.bold,
                    fontSize: 17.sp,
                  ),
                ),
              ),
              CustomTextFormFild(
                validator: (value) {
                  return validInput(value!, 5, 60, 'PhoneNumber');
                },
                lable: 'Phone',
                mycontroller: controller.phoneController,
                suffixIcon: CupertinoIcons.phone_circle_fill,
                textInputType: TextInputType.number,
                hintText: "Enter Your Phone",
              ),
              Padding(
                padding: EdgeInsets.only(left: 2.0.h, right: 2.h, top: 2.h),
                child: Text(
                  'Role',
                  style: GoogleFonts.ptSerif(
                    textStyle: Theme.of(context).textTheme.labelMedium,
                    fontWeight: FontWeight.bold,
                    fontSize: 17.sp,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 2.0.h, right: 2.h),
                child: SizedBox(
                  width: Get.width - 3.w,
                  child: DropdownButton<String>(
                    focusColor: Colors.white,
                    value: controller.chosenValue,
                    iconEnabledColor:
                        Theme.of(context).textTheme.bodyMedium!.color,
                    isExpanded: true,
                    items: controller.choice
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      );
                    }).toList(),
                    hint: Text(
                      "Please choose your Roole",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    onChanged: (String? value) {
                      controller.chageValue(value!);
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 2.0.h, right: 2.h, top: 2.h),
                child: Text(
                  'Upload intro video',
                  style: GoogleFonts.ptSerif(
                    textStyle: Theme.of(context).textTheme.labelMedium,
                    fontWeight: FontWeight.bold,
                    fontSize: 17.sp,
                  ),
                ),
              ),
              UploadIntroVideoWidget(
                onTap: controller.onVideoTap,
              ),
              SizedBox(height: 4.h),
              Center(
                child: CustomButton(
                  width: Get.width - 9.w,
                  assets_image: AppPhotoLink.success_svg,
                  buttonName: "Save",
                  ontap: controller.onSaveTap,
                ),
              ),
              SizedBox(height: 4.h),
            ],
          ),
        ),
      ),
    );
  }
}
