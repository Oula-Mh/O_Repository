import 'package:flutter/material.dart';
import 'package:mypro/core/utils/app_text_style.dart';
import '../../../../../core/utils/app_color.dart';

// ignore: must_be_immutable
class TextFormFieldAuth extends StatefulWidget {
  final String hintText;
  final IconData? iconData;
  final bool isNumber;
  final bool? isPassword;
  bool? passToggle;

  TextFormFieldAuth({
    super.key,
    required this.hintText,
    @required this.iconData,
    required this.isNumber,
    this.isPassword = false,
    this.passToggle,
  });
  // const TextFormFieldAuth({super.key});

  @override
  State<TextFormFieldAuth> createState() => _TextFormFieldAuthState();
}

class _TextFormFieldAuthState extends State<TextFormFieldAuth> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: widget.isNumber ? TextInputType.number : null,
      obscureText:
          widget.passToggle! || widget.passToggle == true ? true : false,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: widget.hintText,
        hintStyle: MyTextStyle.hintStyle,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 16, horizontal: 35),
        suffixIcon: widget.isPassword == true
            ? InkWell(
                onTap: () {
                  setState(() {
                    widget.passToggle =
                        widget.passToggle == true ? false : true;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Icon(
                    widget.passToggle!
                        ? Icons.visibility_off
                        : Icons.visibility,
                    color: AppColor.iconColor,
                  ),
                ))
            : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Icon(
            widget.iconData,
            color: AppColor.iconColor,
          ),
        ),
      ),
    );
  }
}
