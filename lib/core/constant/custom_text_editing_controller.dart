// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomTextFormFild extends StatelessWidget {
  final String? hintText;
  final String? lable;
  final IconData? suffixIcon;
  final TextEditingController? mycontroller;
  final String? Function(String?) validator;
  final TextInputType? textInputType;
  bool? enabled = true;
  final bool? isShowText;
  void Function()? onTap = () {};
  int? maxLines = 1;
  final void Function()? sufficsIconTap;
  CustomTextFormFild(
      {super.key,
      this.sufficsIconTap,
      this.isShowText,
      this.textInputType,
      required this.validator,
      this.mycontroller,
      this.hintText,
      this.lable,
      this.suffixIcon,
      this.onTap,
      this.maxLines,
      this.enabled});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20, left: 4, right: 4),
      child: TextFormField(
        enabled: enabled,
        onTap: onTap,
        maxLines: maxLines,
        keyboardType: textInputType,
        obscureText: isShowText == null || isShowText == false ? false : true,
        validator: validator,
        style: Theme.of(context).textTheme.bodyMedium,
        controller: mycontroller,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(fontSize: 14.0),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
          suffixIcon: InkWell(
              onTap: sufficsIconTap,
              child: Icon(
                suffixIcon,
                color: Theme.of(context).primaryColorLight,
              )),
          label: Container(
              margin: const EdgeInsets.symmetric(horizontal: 9),
              child: Text(lable!)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}
