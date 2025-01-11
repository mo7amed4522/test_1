// ignore_for_file: deprecated_member_use, must_be_immutable

import 'package:flutter/material.dart';

class IconButtonWidget extends StatelessWidget {
  void Function() onPressed;
  IconData icon;
  IconButtonWidget({
    super.key,
    required this.onPressed,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Theme.of(context).colorScheme.error.withOpacity(0.30),
      ),
      child: Center(
        child: Container(
          height: 40,
          width: 40,
          padding: EdgeInsets.only(right: 0.0001),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Theme.of(context).colorScheme.onBackground.withOpacity(0.60),
          ),
          child: IconButton(
            onPressed: onPressed,
            icon: Icon(
              icon,
              color: Theme.of(context).primaryColor,
              size: 20,
            ),
          ),
        ),
      ),
    );
  }
}
