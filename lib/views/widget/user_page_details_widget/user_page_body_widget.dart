// ignore_for_file: must_be_immutable, non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';
import 'package:test_1/core/assets/app_assets.dart';
import 'package:test_1/views/widget/user_page_details_widget/custom_button_widget_user.dart';

class UserPageBodyWidget extends StatelessWidget {
  String userName;
  String email;
  String phone;
  String role;
  void Function() ontap_edit;
  void Function() ontap_delete;

  UserPageBodyWidget({
    super.key,
    required this.userName,
    required this.email,
    required this.phone,
    required this.role,
    required this.ontap_edit,
    required this.ontap_delete,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.sp, vertical: 5.sp),
      child: Column(
        children: [
          //===================== Name Tag =================== //
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(8.sp),
                child: Icon(
                  CupertinoIcons.person_alt_circle,
                  size: 20.sp,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.sp),
                child: Text(
                  'Name :'.tr,
                  style: GoogleFonts.ptSerif(
                    textStyle: Theme.of(context).textTheme.labelMedium,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.sp,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0.sp),
                child: Text(
                  userName,
                  style: GoogleFonts.poppins(
                    textStyle: Theme.of(context).textTheme.bodyMedium,
                    fontWeight: FontWeight.normal,
                    fontSize: 15.sp,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 2.h),
          //===================== Email Tag =================== //
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0.sp),
                child: Icon(
                  CupertinoIcons.envelope,
                  size: 20.sp,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0.sp),
                child: Text(
                  'email :'.tr,
                  style: GoogleFonts.ptSerif(
                    textStyle: Theme.of(context).textTheme.labelMedium,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.sp,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0.sp),
                child: SizedBox(
                  width: Get.width / 1.5,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Text(
                      email,
                      style: GoogleFonts.poppins(
                        textStyle: Theme.of(context).textTheme.bodyMedium,
                        fontWeight: FontWeight.normal,
                        fontSize: 15.sp,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 2.h),
          //===================== PHONE TAG =================== //
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0.sp),
                child: Icon(
                  CupertinoIcons.phone_circle,
                  size: 20.sp,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0.sp),
                child: Text(
                  'phone :'.tr,
                  style: GoogleFonts.ptSerif(
                    textStyle: Theme.of(context).textTheme.labelMedium,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.sp,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0.sp),
                child: Text(
                  phone,
                  style: GoogleFonts.poppins(
                    textStyle: Theme.of(context).textTheme.bodyMedium,
                    fontWeight: FontWeight.normal,
                    fontSize: 15.sp,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 2.h),
          //===================== ROLE TAG =================== //
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0.sp),
                child: Icon(
                  CupertinoIcons.doc_person,
                  size: 20.sp,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0.sp),
                child: Text(
                  'role :'.tr,
                  style: GoogleFonts.ptSerif(
                    textStyle: Theme.of(context).textTheme.labelMedium,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.sp,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0.sp),
                child: Text(
                  role,
                  style: GoogleFonts.poppins(
                    textStyle: Theme.of(context).textTheme.bodyMedium,
                    fontWeight: FontWeight.normal,
                    fontSize: 15.sp,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 2.h),
          //===================== VIDEO TAG =================== //
          Center(
            child: Text(
              'intro'.tr,
              style: GoogleFonts.ptSerif(
                textStyle: Theme.of(context).textTheme.labelMedium,
                fontWeight: FontWeight.bold,
                fontSize: 20.sp,
              ),
            ),
          ),
          SizedBox(height: 2.h),
          Container(
            height: 20.h,
            margin: EdgeInsets.all(10.sp),
            padding: EdgeInsets.all(10.sp),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Theme.of(context).textTheme.bodyMedium!.color,
                border: Border.all(width: 3.0),
                borderRadius: BorderRadius.all(Radius.circular(10.sp)),
                boxShadow: [
                  BoxShadow(blurRadius: 10, offset: Offset(1, 3))
                ] // Make rounded corner of border
                ),
            child: Lottie.asset(
              AppPhotoLink.load,
              fit: BoxFit.fill,
            ),
          ),
          // GetBuilder<UserPageDetailsControllerImp>(
          //   init: UserPageDetailsControllerImp(),
          //   builder: (controller) => Center(
          //     child: controller.errorMessage != null
          //         ? Column(
          //             children: [
          //               Text(
          //                 controller.errorMessage!,
          //                 style: TextStyle(color: Colors.red, fontSize: 16),
          //                 textAlign: TextAlign.center,
          //               ),
          //               ElevatedButton(
          //                 onPressed: () {},
          //                 child: Text("Retry"),
          //               ),
          //             ],
          //           )
          //         : controller.videoPlayerController!.value.isInitialized
          //             ? Column(
          //                 children: [
          //                   AspectRatio(
          //                     aspectRatio: controller
          //                         .videoPlayerController!.value.aspectRatio,
          //                     child: VideoPlayer(
          //                       controller.videoPlayerController!,
          //                     ),
          //                   ),
          //                   Row(
          //                     mainAxisAlignment: MainAxisAlignment.center,
          //                     children: [
          //                       IconButton(
          //                         onPressed: controller.videoPlayer,
          //                         icon: Icon(
          //                           CupertinoIcons.arrowtriangle_left_circle,
          //                         ),
          //                       ),
          //                       SizedBox(width: 8),
          //                       IconButton(
          //                         onPressed: controller.voidPause,
          //                         icon: Icon(
          //                           CupertinoIcons.pause_circle,
          //                         ),
          //                       ),
          //                     ],
          //                   ),
          //                 ],
          //               )
          //             : CircularProgressIndicator(),
          //   ),
          // ),
          SizedBox(height: 2.h),
          //====================== BUTTON EDIT =================== //
          Container(
            padding: EdgeInsets.only(bottom: 3.h, left: 1.h, right: 1.h),
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButton(
                  width: Get.width / 2.2,
                  ontap: ontap_edit,
                  assets_image: AppPhotoLink.edit_svg,
                  buttonName: "edit".tr,
                ),
                CustomButton(
                  width: Get.width / 2.2,
                  ontap: ontap_delete,
                  assets_image: AppPhotoLink.delete_svg,
                  buttonName: "delete".tr,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
