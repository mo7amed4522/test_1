import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_1/controller/start_screen_controller/start_screen_controller.dart';
import 'package:test_1/views/widget/start_widget/logo_widget.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<StartScreenControllerIMP>(
        init: StartScreenControllerIMP(),
        builder: (controller) => LogoWidget(),
      ),
    );
  }
}
