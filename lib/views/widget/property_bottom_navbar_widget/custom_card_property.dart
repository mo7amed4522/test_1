import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:test_1/controller/property_bottom_navbar_screen_controller/property_bottom_navbar_screen_controller.dart';
import 'package:test_1/core/assets/app_assets.dart';

class CustomCardProperty extends StatelessWidget {
  const CustomCardProperty({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PropertyBottomNavbarScreenControllerIMP>(
      init: PropertyBottomNavbarScreenControllerIMP(),
      builder: (controller) => Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        child: ListView.separated(
          itemCount: controller.propertyData!.length,
          separatorBuilder: (context, index) => SizedBox(height: 7),
          itemBuilder: (context, index) => Stack(
            children: [
              InkWell(
                onTap: () {
                  controller.goToPropertyPageDetails(index);
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
                            child: Image.asset(
                              AppPhotoLink.logo,
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
                              controller.propertyData![index].name!,
                              style: GoogleFonts.poppins(
                                textStyle:
                                    Theme.of(context).textTheme.bodyMedium,
                                fontWeight: FontWeight.normal,
                                fontSize: 14.sp,
                              ),
                            ),
                            Text(
                              'owner :'.tr,
                              style: GoogleFonts.ptSerif(
                                textStyle:
                                    Theme.of(context).textTheme.labelMedium,
                                fontWeight: FontWeight.bold,
                                fontSize: 17.sp,
                              ),
                            ),
                            Text(
                              controller.propertyData![index].user!.name!,
                              style: GoogleFonts.poppins(
                                textStyle:
                                    Theme.of(context).textTheme.bodyMedium,
                                fontWeight: FontWeight.normal,
                                fontSize: 14.sp,
                              ),
                            ),
                            Text(
                              'price :'.tr,
                              style: GoogleFonts.ptSerif(
                                textStyle:
                                    Theme.of(context).textTheme.labelMedium,
                                fontWeight: FontWeight.bold,
                                fontSize: 17.sp,
                              ),
                            ),
                            Text(
                              controller.propertyData![index].price!,
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
