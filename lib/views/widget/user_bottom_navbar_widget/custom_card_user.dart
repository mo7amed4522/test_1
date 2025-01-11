import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:test_1/controller/user_bottom_navbar_screen_controller/user_bottom_navbar_screen_controller.dart';
import 'package:test_1/core/assets/app_assets.dart';

class CustomCardUser extends StatelessWidget {
  const CustomCardUser({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserBottomNavbarScreenControllerIMP>(
      init: UserBottomNavbarScreenControllerIMP(),
      builder: (controller) => Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        child: ListView.separated(
          itemCount: controller.userData!.length,
          separatorBuilder: (context, index) => SizedBox(height: 7),
          itemBuilder: (context, index) => Stack(
            children: [
              InkWell(
                onTap: () {
                  controller.goToUserPageDetails(index);
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Theme.of(context).colorScheme.error),
                  child: SizedBox(
                    width: Get.width,
                    height: Get.height / 6,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: Get.width / 3,
                          height: Get.height / 6,
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20)),
                            child: Image.network(
                              controller.userData![index].profileImage!,
                              width: Get.width / 3,
                              height: Get.height / 6,
                              fit: BoxFit.fill,
                              errorBuilder: (c, n, s) => Image.asset(
                                AppPhotoLink.logo,
                                width: 10,
                                height: Get.height / 6,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 9),
                            Text(
                              'Name :'.tr,
                              style: GoogleFonts.ptSerif(
                                textStyle:
                                    Theme.of(context).textTheme.labelMedium,
                                fontWeight: FontWeight.bold,
                                fontSize: 17.sp,
                              ),
                            ),
                            Text(
                              controller.userData![index].name!,
                              style: GoogleFonts.poppins(
                                textStyle:
                                    Theme.of(context).textTheme.bodyMedium,
                                fontWeight: FontWeight.normal,
                                fontSize: 14.sp,
                              ),
                            ),
                            Text(
                              'Email :'.tr,
                              style: GoogleFonts.ptSerif(
                                textStyle:
                                    Theme.of(context).textTheme.labelMedium,
                                fontWeight: FontWeight.bold,
                                fontSize: 17.sp,
                              ),
                            ),
                            SizedBox(
                              width: Get.width / 1.7,
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Text(
                                  controller.userData![index].email!,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(fontSize: 14.sp),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),
                              ),
                            ),
                            Text(
                              'Phone :'.tr,
                              style: GoogleFonts.ptSerif(
                                textStyle:
                                    Theme.of(context).textTheme.labelMedium,
                                fontWeight: FontWeight.bold,
                                fontSize: 17.sp,
                              ),
                            ),
                            Text(
                              controller.userData![index].phone!,
                              style: GoogleFonts.poppins(
                                textStyle:
                                    Theme.of(context).textTheme.bodyMedium,
                                fontWeight: FontWeight.normal,
                                fontSize: 14.sp,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
