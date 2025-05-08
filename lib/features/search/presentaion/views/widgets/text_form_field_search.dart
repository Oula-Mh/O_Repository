import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/app_text_style.dart';

class TextFormFieldSearch extends StatelessWidget {
  const TextFormFieldSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      showCursor: true,
      cursorColor: Colors.brown,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          suffixIcon: (Icon(
            Iconsax.search_normal,
            color: AppColor.iconColor,
          )),
          hintText: ("ادخل رقم الموديل"),
          hintStyle: MyTextStyle.hintStyle,
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColor.iconColor),
              borderRadius: BorderRadius.circular(25))),
    );
  }
}
