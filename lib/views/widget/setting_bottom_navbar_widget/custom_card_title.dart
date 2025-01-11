// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class CustomCardTitleWidget extends StatelessWidget {
  final String titleName;
  final VoidCallback onCardTB;
  const CustomCardTitleWidget(
      {super.key, required this.titleName, required this.onCardTB});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12.sp, vertical: 12.sp),
      child: InkWell(
        onTap: onCardTB,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              titleName,
              style: GoogleFonts.poppins(
                textStyle: Theme.of(context).textTheme.bodyLarge,
                fontSize: 17.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(
              CupertinoIcons.chevron_right,
              color: Theme.of(context).primaryColor,
              size: 20.sp,
            ),
          ],
        ),
      ),
    );
  }
}

class CustomCardButton extends StatelessWidget {
  final String titleName;
  final VoidCallback onCardTB;
  const CustomCardButton(
      {super.key, required this.titleName, required this.onCardTB});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12.sp, vertical: 7.sp),
      child: InkWell(
        onTap: onCardTB,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              titleName,
              style: GoogleFonts.poppins(
                textStyle: Theme.of(context).textTheme.displaySmall,
                fontSize: 18.sp,
              ),
            ),
            Icon(CupertinoIcons.chevron_right,
                color: Theme.of(context).colorScheme.onPrimary, size: 20.sp),
          ],
        ),
      ),
    );
  }
}
