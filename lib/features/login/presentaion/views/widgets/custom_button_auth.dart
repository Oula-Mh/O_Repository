import 'package:flutter/material.dart';

import '../../../../../core/utils/app_color.dart';

class CustomButtomAuth extends StatelessWidget {
  final void Function() onPressed;
  final String? textButtom;

  const CustomButtomAuth(
      {super.key, required this.onPressed, required this.textButtom});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: MaterialButton(
          onPressed: onPressed,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          textColor: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 10),
          color: AppColor.primaryColor,
          child: Text(
            textButtom!,
            style: const TextStyle(fontSize: 20),
          )),
    );
  }
}
