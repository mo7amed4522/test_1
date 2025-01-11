import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:test_1/core/assets/app_assets.dart';

class CircleAvatarWidget extends StatelessWidget {
  const CircleAvatarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.asset(
        AppPhotoLink.avatar,
        fit: BoxFit.contain,
        width: 50.sp,
        height: 50.sp,
      ),
    );
  }
}
