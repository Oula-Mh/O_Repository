import 'package:flutter/material.dart';
import '../utils/app_color.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({required this.onTap, required this.icon, super.key});
  IconData icon;
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 7,
      shadowColor: Colors.grey.shade50,
      clipBehavior: Clip.none,
      color: AppColor.backGroundIconColor,
      child: IconButton(
          onPressed: onTap,
          icon: Icon(
            icon,
            size: 25,
            color: AppColor.iconColor,
          )),
    );
  }
}
