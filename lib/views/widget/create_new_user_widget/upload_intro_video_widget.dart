import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'package:test_1/core/assets/app_assets.dart';

class UploadIntroVideoWidget extends StatelessWidget {
  final void Function() onTap;
  const UploadIntroVideoWidget({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
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
        child: SvgPicture.asset(
          AppPhotoLink.video_svg,
          width: 25.w,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
