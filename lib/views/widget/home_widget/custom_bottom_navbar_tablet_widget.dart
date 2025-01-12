// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:test_1/controller/home_screen_controller/home_screen_controller.dart';

class CustomBottomNavBarTabletWidget extends StatelessWidget {
  const CustomBottomNavBarTabletWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, bottom: 40, right: 10),
      height: 70,
      decoration: BoxDecoration(
        color: Theme.of(context).bottomNavigationBarTheme.backgroundColor,
        boxShadow: [
          BoxShadow(blurRadius: 30, offset: const Offset(0, 10)),
        ],
        borderRadius: BorderRadius.circular(30),
      ),
      child: GetBuilder<HomeScreenControllerIMP>(
        init: HomeScreenControllerIMP(),
        builder: (controller) => ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              controller.changeIndex(index);
            },
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Stack(
              children: [
                AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  curve: Curves.fastLinearToSlowEaseIn,
                  width: index == controller.currentIndex
                      ? Get.width * .35
                      : Get.width * .154,
                  alignment: Alignment.center,
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    curve: Curves.fastLinearToSlowEaseIn,
                    height:
                        index == controller.currentIndex ? Get.width * .14 : 0,
                    width:
                        index == controller.currentIndex ? Get.width * .34 : 0,
                    decoration: BoxDecoration(
                      color: index == controller.currentIndex
                          ? Theme.of(context).primaryColor
                          : Theme.of(context)
                              .bottomNavigationBarTheme
                              .unselectedItemColor,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  curve: Curves.fastLinearToSlowEaseIn,
                  //width: index == controller.currentIndex ? Get.width * .12 : Get.width * .15,
                  alignment: Alignment.center,
                  child: Stack(
                    children: [
                      Row(
                        children: [
                          AnimatedContainer(
                            duration: const Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            width: index == controller.currentIndex
                                ? Get.width * .2
                                : 0,
                          ),
                          AnimatedOpacity(
                            opacity: index == controller.currentIndex ? 1 : 0,
                            duration: const Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            child: Text(
                              index == controller.currentIndex
                                  ? controller.listOfName[index]
                                  : '',
                              style: GoogleFonts.poppins(
                                textStyle: Theme.of(context)
                                    .bottomNavigationBarTheme
                                    .selectedLabelStyle,
                                fontSize: 15.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          AnimatedContainer(
                            duration: Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            width: index == controller.currentIndex
                                ? Get.width * .06
                                : 10.w,
                          ),
                          SvgPicture.asset(
                            controller.listOfIcons[index],
                            width: Get.width * .076,
                            color: index == controller.currentIndex
                                ? Theme.of(context)
                                    .bottomNavigationBarTheme
                                    .selectedIconTheme!
                                    .color
                                : Theme.of(context)
                                    .bottomNavigationBarTheme
                                    .unselectedIconTheme!
                                    .color,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
