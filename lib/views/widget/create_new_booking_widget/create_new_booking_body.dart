import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:test_1/controller/create_new_booking_controller/create_new_booking_controller.dart';
import 'package:test_1/core/assets/app_assets.dart';
import 'package:test_1/core/constant/custom_text_editing_controller.dart';
import 'package:test_1/core/func/auth/vaild_input.dart';
import 'package:test_1/views/widget/user_page_details_widget/custom_button_widget_user.dart';

class CreateNewBookingBody extends StatelessWidget {
  const CreateNewBookingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CreateNewBookingControllerIMP>(
        init: CreateNewBookingControllerIMP(),
        builder: (controller) => SizedBox(
              height: Get.height - 44.h,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 2.h),
                    Padding(
                      padding: EdgeInsets.all(2.h),
                      child: Text(
                        'Name of Property',
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
                      enabled: false,
                      mycontroller:
                          TextEditingController(text: controller.name_property),
                      suffixIcon: CupertinoIcons.house,
                      hintText: "Enter Name of Property",
                    ),
                    Padding(
                      padding: EdgeInsets.all(2.h),
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
                      lable: 'Price of Property',
                      enabled: false,
                      mycontroller: TextEditingController(
                          text: controller.price_property),
                      suffixIcon: CupertinoIcons.money_dollar,
                      hintText: "Enter Name of Property",
                    ),
                    Padding(
                      padding: EdgeInsets.all(2.h),
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
                      lable: 'Location of Property',
                      enabled: false,
                      mycontroller: TextEditingController(
                          text: controller.location_property),
                      suffixIcon: CupertinoIcons.pin,
                      hintText: "Enter Name of Property",
                    ),
                    Padding(
                      padding: EdgeInsets.all(2.h),
                      child: Text(
                        'Start Date',
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
                      lable: 'Start Date',
                      //enabled: false,
                      onTap: () {
                        controller.selectDateStart(context);
                      },
                      mycontroller: TextEditingController(
                          text: controller.start_date.toString()),
                      suffixIcon: CupertinoIcons.calendar,
                      hintText: "Enter Name of Property",
                    ),
                    Padding(
                      padding: EdgeInsets.all(2.h),
                      child: Text(
                        'End Date',
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
                      lable: 'End Date',
                      //enabled: false,
                      onTap: () {
                        controller.selectDateEnd(context);
                      },
                      mycontroller: TextEditingController(
                          text: controller.endData.toString()),
                      suffixIcon: CupertinoIcons.calendar,
                      hintText: "Enter Name of Property",
                    ),
                    SizedBox(height: 4.h),
                    Center(
                      child: CustomButton(
                        width: Get.width - 9.w,
                        assets_image: AppPhotoLink.booking_svg,
                        buttonName: "Booking",
                        ontap: controller.createNewBooking,
                      ),
                    ),
                    SizedBox(height: 4.h),
                  ],
                ),
              ),
            ));
  }
}
