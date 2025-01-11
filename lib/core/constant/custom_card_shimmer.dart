import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_1/views/screen/shimmer_screen/shimmer_screen.dart';

class CustomCardShimmer extends StatelessWidget {
  const CustomCardShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: ListView.separated(
        itemCount: 11,
        separatorBuilder: (context, index) => SizedBox(height: 10),
        itemBuilder: (context, index) => Stack(
          children: [
            Container(
              height: Get.height / 6,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Theme.of(context).colorScheme.error),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: Get.height / 6,
                    width: Get.width / 3,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                      child: ShimmerScreen.rectangular(
                        height: 20,
                        width: 30,
                        shapeBorder: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
                    ),
                  ),
                  SizedBox(width: 7),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                        width: Get.width / 4,
                        child: ShimmerScreen.rectangular(
                          height: 40,
                          width: 17,
                          shapeBorder: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                      ),
                      SizedBox(height: 4),
                      SizedBox(
                        height: 15,
                        child: ShimmerScreen.rectangular(
                          height: 20,
                          width: Get.width / 1.7,
                          shapeBorder: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        height: 20,
                        width: Get.width / 4,
                        child: ShimmerScreen.rectangular(
                          height: 40,
                          width: 17,
                          shapeBorder: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                      ),
                      SizedBox(height: 4),
                      SizedBox(
                        height: 15,
                        child: ShimmerScreen.rectangular(
                          height: 20,
                          width: Get.width / 1.7,
                          shapeBorder: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                      ),
                    ],
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
