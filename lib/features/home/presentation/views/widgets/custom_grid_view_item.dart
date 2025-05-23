import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:mypro/core/utils/app_color.dart';
import 'package:mypro/core/utils/app_text_style.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../alnaal/presentaion/views/AlnaalView.dart';
import '../../../data/models/shoes_models_model.dart';
import '../../manger/shoes_models/shoes_models_cubit.dart';

class CustomGridViewItem extends StatelessWidget {
   const CustomGridViewItem({required this.shoesModelsModel,super.key});
final ShoesModelsModel shoesModelsModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          // Get.to(const AlnaalView(),
          //     transition: Transition.circularReveal,
          //     duration: const Duration(milliseconds: 700  ));
          GoRouter.of(context).push(AppRoute.alnaal,extra:shoesModelsModel );

        },
        child: Material(
          color: AppColor.customCardColor,
          elevation: 5,
          shadowColor: Colors.grey.shade50,
          borderRadius: BorderRadius.circular(12),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
              Flexible(
                flex: 6,
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: const DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("assets/images/aa.jpeg"))),
                    // child:
                    // CachedNetworkImage(
                    //   imageUrl: 'assets/images/test.png',
                    //   placeholder: (context, url) => Shimmer.fromColors(
                    //     highlightColor: Colors.white,
                    //     baseColor: Colors.grey.shade300,
                    //     child: Container(
                    //       decoration: BoxDecoration(
                    //         borderRadius: BorderRadius.circular(12),
                    //         color: Colors.grey.shade300,
                    //       ),
                    //     ),
                    //   ),
                    //   errorWidget: (context, url, error) => const Center(
                    //     child: Icon(
                    //       Icons.error_outline,
                    //       color: Colors.grey,
                    //       size: 35,
                    //     ),
                    //   ),
                    // ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Flexible(
                flex: 3,
                child: Column(
                  textDirection: TextDirection.rtl,
                  children: [
                    const Text(
                      'رقم الموديل :',
                      style: MyTextStyle.subTitle,
                    ),
                    const SizedBox(height: 7),
                    Text(
                      shoesModelsModel.modelNumber,
                      style: MyTextStyle.base,
                    ),
                  ],
                ),
              )
            ]),
          ),
        ));
  }
}
