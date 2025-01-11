import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:test_1/core/assets/app_assets.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset(
        AppPhotoLink.start_logo,
        fit: BoxFit.fill,
      ),
    );
  }
}
