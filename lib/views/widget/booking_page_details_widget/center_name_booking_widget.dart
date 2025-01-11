// ignore_for_file: non_constant_identifier_names, prefer_interpolation_to_compose_strings, prefer_const_constructors_in_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:test_1/views/widget/user_page_details_widget/icon_button_widget.dart';

class CenterNameBookingWidget extends StatelessWidget {
  final String booking_id;
  void Function() onPressed;
  CenterNameBookingWidget({
    super.key,
    required this.booking_id,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 8.h,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              'booking'.tr + '  ' + booking_id,
              style: GoogleFonts.poppins(
                textStyle: Theme.of(context).textTheme.displayLarge,
                fontSize: 20.sp,
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
      ),
    );
  }
}
