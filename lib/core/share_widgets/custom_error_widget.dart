import 'package:flutter/material.dart';
import 'package:mypro/core/utils/app_text_style.dart';
class CutomErrorWidget extends StatelessWidget {
   CutomErrorWidget({required this.errMessage,super.key});
  String errMessage;

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(errMessage,style: MyTextStyle.subTitle),);


  }
}
