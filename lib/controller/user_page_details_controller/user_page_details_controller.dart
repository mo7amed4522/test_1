// ignore_for_file: deprecated_member_use, unused_field, prefer_final_fields, prefer_interpolation_to_compose_strings, unnecessary_string_interpolations, unused_local_variable

import 'package:get/get.dart';
import 'package:test_1/core/constant/curd.dart';
import 'package:test_1/core/constant/link_api.dart';
import 'package:test_1/model/user_data_model.dart';

abstract class UserPageDetailsController extends GetxController {
  void videoPlayer();
  void voidPause();
  void goBack();
  void deleteUser(int userID);
  // Future<void> videoPlay();
}

class UserPageDetailsControllerImp extends UserPageDetailsController {
  //VideoPlayerController? videoPlayerController;
  UserData userData = Get.arguments['userDataDetails'];
  String? errorMessage;
  Crud _crud = Crud();

  @override
  void onInit() {
    //videoPlay();
    //print(userData.introVideo);
    super.onInit();
  }

  @override
  void videoPlayer() {
    // videoPlayerController!.play();
  }

  @override
  void voidPause() {
    // videoPlayerController!.pause();
  }

  @override
  void goBack() {
    Get.back();
  }

  @override
  void deleteUser(int userID) async {
    var response = await _crud
        .deleteRequesy('${ApiLink.deleteUser + '/' + userID.toString()}');
  }

  // @override
  // Future<void> videoPlay() async {
  //   try {
  //     videoPlayerController =
  //         VideoPlayerController.networkUrl(Uri.parse(userData.introVideo!))
  //           ..addListener(() {
  //             if (videoPlayerController!.value.hasError) {
  //               errorMessage =
  //                   'Error loading video: ${videoPlayerController!.value.errorDescription}';
  //               update();
  //             }
  //           })
  //           ..initialize().then((_) {
  //             update();
  //           });
  //   } catch (e) {
  //     errorMessage = 'Error initializing video: $e';
  //     update();
  //   }
  // }
}
