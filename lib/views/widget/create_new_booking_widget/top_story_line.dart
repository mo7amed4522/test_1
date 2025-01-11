import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TopStoryLineWidget extends StatefulWidget {
  final PageController pageController;

  const TopStoryLineWidget({Key? key, required this.pageController})
      : super(key: key);

  @override
  State<TopStoryLineWidget> createState() => _TopStoryLineWidgetState();
}

class _TopStoryLineWidgetState extends State<TopStoryLineWidget> {
  int currentPosition = 0;
  int lastCurrentPosition = 0;

  @override
  Widget build(BuildContext context) {
    widget.pageController.addListener(() {
      currentPosition = widget.pageController.page?.round() ?? 0;
      if (currentPosition != lastCurrentPosition) {
        if (mounted) {
          lastCurrentPosition = currentPosition;
          setState(() {});
        }
      }
    });
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 31),
      child: Row(
        children: List.generate(4, (index) {
          return Expanded(
            child: Container(
              margin: const EdgeInsets.only(right: 3),
              height: 2.7,
              width: (Get.width - 62) / 4,
              decoration: BoxDecoration(
                color: currentPosition == index
                    ? Theme.of(context).primaryColorLight
                    : Theme.of(context).colorScheme.onPrimaryContainer,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          );
        }),
      ),
    );
  }
}
