// ignore_for_file: deprecated_member_use, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.ontap,
    required this.buttonName,
    required this.assets_image,
    required this.width,
  });

  final VoidCallback ontap;
  final String buttonName;
  final String assets_image;
  final double width;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        width: width,
        height: Get.height / 15,
        decoration: ShapeDecoration(
            color: Theme.of(context).primaryColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            shadows: [
              BoxShadow(
                  color: Color(0x19C94210),
                  blurRadius: 30,
                  offset: Offset(0, 10),
                  spreadRadius: 0)
            ]),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              buttonName,
              style: GoogleFonts.poppins(
                textStyle: Theme.of(context).textTheme.labelLarge,
                fontWeight: FontWeight.bold,
                fontSize: 15.sp,
              ),
            ),
            SizedBox(width: 10.sp),
            SvgPicture.asset(
              assets_image,
              width: 20.sp,
              color: Theme.of(context).textTheme.labelLarge!.color,
            )
          ],
        ),
      ),
    );
  }
}
