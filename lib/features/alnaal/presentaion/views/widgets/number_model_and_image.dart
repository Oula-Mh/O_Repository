import 'package:flutter/material.dart';

import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/app_text_style.dart';
import '../../../../home/data/models/shoes_models_model.dart';
class NumberModelAndImage extends StatelessWidget {
  NumberModelAndImage({required this.shoesModelsModel,super.key});
  final ShoesModelsModel shoesModelsModel;
  @override
  Widget build(BuildContext context) {
    return
      Card(
        elevation: 2,
        color: AppColor.bodyCardColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child:
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "رقم الموديل : ",
                    style: MyTextStyle.subTitle,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    shoesModelsModel.modelNumber,
                    style: MyTextStyle.base,
                  )
                ],
              ),
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
              )
            ],
          ),
        ),
      )
    ;
  }
}
