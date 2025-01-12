import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:test_1/views/screen/shimmer_screen/shimmer_screen.dart';

class CustomGridViewShimmer extends StatelessWidget {
  const CustomGridViewShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 11,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 2.w,
        mainAxisSpacing: 2.w,
        childAspectRatio: (1),
      ),
      itemBuilder: (context, index) => Container(
        decoration: BoxDecoration(
          color: Theme.of(context).cardTheme.color,
          borderRadius: BorderRadius.circular(10.sp),
        ),
        child: Column(
          children: [
            SizedBox(
              width: Get.width,
              height: Get.height / 4,
              child: ShimmerScreen.rectangular(
                height: 20,
                width: 30,
                shapeBorder: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
            ),
            SizedBox(height: 3.h),
            Padding(
              padding: EdgeInsets.only(left: 2.w),
              child: Row(
                children: [
                  SizedBox(
                    height: 15,
                    child: ShimmerScreen.rectangular(
                      height: 20,
                      width: 9.w,
                      shapeBorder: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    ),
                  ),
                  SizedBox(width: 2.w),
                  SizedBox(
                    height: 15,
                    child: ShimmerScreen.rectangular(
                      height: 20,
                      width: Get.width / 3,
                      shapeBorder: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 3.h),
            Padding(
              padding: EdgeInsets.only(left: 2.w),
              child: Row(
                children: [
                  SizedBox(
                    height: 15,
                    child: ShimmerScreen.rectangular(
                      height: 20,
                      width: 9.w,
                      shapeBorder: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    ),
                  ),
                  SizedBox(width: 2.w),
                  SizedBox(
                    height: 15,
                    child: ShimmerScreen.rectangular(
                      height: 20,
                      width: Get.width / 3,
                      shapeBorder: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
