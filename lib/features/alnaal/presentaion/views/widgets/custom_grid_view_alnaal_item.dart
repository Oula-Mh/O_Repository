import 'package:flutter/material.dart';
import 'package:mypro/core/utils/app_color.dart';
import '../../../../../core/utils/app_text_style.dart';

class CustomGridViewAlnaalItem extends StatelessWidget {
  const CustomGridViewAlnaalItem({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Card(
        elevation: 5,
        shadowColor: Colors.grey.shade50,
        color: AppColor.primaryColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              topLeft: Radius.circular(20),
              bottomRight: Radius.circular(20)),
        ),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              border: Border.all(color: Colors.brown, width: 0.2),
              color: AppColor.customCardColor),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/images/aa.jpeg"),
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "رقم النعل : ",
                      style: MyTextStyle.subTitle,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      '124',
                      style: MyTextStyle.base,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
