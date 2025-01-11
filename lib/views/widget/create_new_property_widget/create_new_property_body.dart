import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:test_1/controller/create_new_property_controller/create_new_property_controller.dart';
import 'package:test_1/core/assets/app_assets.dart';
import 'package:test_1/core/constant/custom_text_editing_controller.dart';
import 'package:test_1/core/func/auth/vaild_input.dart';
import 'package:test_1/views/widget/create_new_property_widget/upload_videoofproperty_widget.dart';
import 'package:test_1/views/widget/user_page_details_widget/custom_button_widget_user.dart';

class CreateNewPropertyBody extends StatelessWidget {
  const CreateNewPropertyBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CreateNewPropertyControllerIMP>(
      init: CreateNewPropertyControllerIMP(),
      builder: (controller) => SizedBox(
        height: Get.height / 1.4,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(2.h),
                child: Text(
                  'Name Property',
                  style: GoogleFonts.ptSerif(
                    textStyle: Theme.of(context).textTheme.labelMedium,
                    fontWeight: FontWeight.bold,
                    fontSize: 17.sp,
                  ),
                ),
              ),
              CustomTextFormFild(
                validator: (value) {
                  return validInput(value!, 5, 60, 'Username');
                },
                lable: 'Name of Property',
                mycontroller: controller.nameController,
                suffixIcon: CupertinoIcons.house,
                hintText: "Enter Name of Property",
              ),
              Padding(
                padding: EdgeInsets.all(2.0.h),
                child: Text(
                  'Description',
                  style: GoogleFonts.ptSerif(
                    textStyle: Theme.of(context).textTheme.labelMedium,
                    fontWeight: FontWeight.bold,
                    fontSize: 17.sp,
                  ),
                ),
              ),
              CustomTextFormFild(
                validator: (value) {
                  return validInput(value!, 5, 60, 'Username');
                },
                lable: 'Description',
                mycontroller: controller.descriptionController,
                suffixIcon: CupertinoIcons.book_circle,
                maxLines: 4,
                hintText: "Enter description of property",
              ),
              Padding(
                padding: EdgeInsets.all(2.0.h),
                child: Text(
                  'Price',
                  style: GoogleFonts.ptSerif(
                    textStyle: Theme.of(context).textTheme.labelMedium,
                    fontWeight: FontWeight.bold,
                    fontSize: 17.sp,
                  ),
                ),
              ),
              CustomTextFormFild(
                validator: (value) {
                  return validInput(value!, 5, 60, 'Username');
                },
                lable: 'Price',
                textInputType: TextInputType.number,
                mycontroller: controller.priceController,
                suffixIcon: CupertinoIcons.money_dollar,
                hintText: "Enter price of property",
              ),
              Padding(
                padding: EdgeInsets.all(2.0.h),
                child: Text(
                  'Location',
                  style: GoogleFonts.ptSerif(
                    textStyle: Theme.of(context).textTheme.labelMedium,
                    fontWeight: FontWeight.bold,
                    fontSize: 17.sp,
                  ),
                ),
              ),
              CustomTextFormFild(
                validator: (value) {
                  return validInput(value!, 5, 60, 'Username');
                },
                lable: 'Location',
                mycontroller: controller.locationController,
                suffixIcon: CupertinoIcons.pin,
                hintText: "Enter location of property",
              ),
              Padding(
                padding: EdgeInsets.only(left: 2.0.h, right: 2.h, top: 2.h),
                child: Text(
                  'Upload Property video',
                  style: GoogleFonts.ptSerif(
                    textStyle: Theme.of(context).textTheme.labelMedium,
                    fontWeight: FontWeight.bold,
                    fontSize: 17.sp,
                  ),
                ),
              ),
              UploadVideoofPropertyWidget(
                onTap: controller.onVideoTap,
              ),
              SizedBox(height: 4.h),
              Center(
                child: CustomButton(
                  width: Get.width - 9.w,
                  assets_image: AppPhotoLink.success_svg,
                  buttonName: "Save",
                  ontap: controller.onSaveTap,
                ),
              ),
              SizedBox(height: 4.h),
            ],
          ),
        ),
      ),
    );
  }
}
