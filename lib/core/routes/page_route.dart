import 'package:get/get.dart';
import 'package:test_1/core/routes/route.dart';
import 'package:test_1/views/screen/booking_page_details/booking_page_details.dart';
import 'package:test_1/views/screen/creat_new_user_screen/create_new_user_screen.dart';
import 'package:test_1/views/screen/create_new_booking_screen/create_new_booking_screen.dart';
import 'package:test_1/views/screen/create_new_property_screen/create_new_property_screen.dart';
import 'package:test_1/views/screen/home_screen/home_screen.dart';
import 'package:test_1/views/screen/property_page_details/property_page_details.dart';
import 'package:test_1/views/screen/start_screen/start_screen.dart';
import 'package:test_1/views/screen/user_page_details/user_page_details.dart';

List<GetPage<dynamic>>? routes = [
  //================= Start Screen =============//
  GetPage(
    name: AppRoutes.startScreen,
    page: () => const StartScreen(),
    //middlewares: [MyMiddleWare()],
  ),
  //================= HOME SCREEN =============//
  GetPage(name: AppRoutes.homeScreen, page: () => const HomeScreen()),
  //================= USER  SCREEN =============//
  GetPage(name: AppRoutes.userDetails, page: () => const UserPageDetails()),
  GetPage(
      name: AppRoutes.crateNewUser, page: () => const CreateNewUserScreen()),
  //================= PROPERTY SCREEN =============//
  GetPage(
      name: AppRoutes.propertyDetails, page: () => const PropertyPageDetails()),
  GetPage(
      name: AppRoutes.crateNewProperty,
      page: () => const CreateNewPropertyScreen()),
  //================= BOOKING SCREEN =============//
  GetPage(
      name: AppRoutes.bookingDetails, page: () => const BookingPageDetails()),
  GetPage(
      name: AppRoutes.crateNewBooking,
      page: () => const CreateNewBookingScreen()),
];
