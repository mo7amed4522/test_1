import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:test_1/views/widget/user_page_details_widget/icon_button_widget.dart';

class UploadMultiPhotos extends StatelessWidget {
  final VoidCallback onCameraTap;
  final VoidCallback onBackTep;
  final Widget backgroundImage;
  const UploadMultiPhotos({
    super.key,
    required this.backgroundImage,
    required this.onCameraTap,
    required this.onBackTep,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: SizedBox(
            child: CircleAvatar(
              radius: 20.w,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 85,
                child: InkWell(
                  onTap: onCameraTap,
                  child: ClipOval(
                    child: backgroundImage,
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 1.h,
          left: 2.h,
          child: IconButtonWidget(
            onPressed: onBackTep,
            icon: Icons.arrow_back_ios_new_outlined,
          ),
        ),
      ],
    );
  }
}
