import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mypro/core/utils/app_color.dart';
import '../../../../../core/share_widgets/custom_icon_button.dart';
import '../../../../search/presentaion/views/search_view.dart';
import 'home_grid_view_builder.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 2,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        color: AppColor.bodyCardColor,
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "الموديلات",
                    style: TextStyle(fontSize: 27),
                  ),
                  Row(
                    children: [
                      CustomIconButton(
                        icon: Iconsax.element_plus,
                        onTap: () {},
                      ),
                      CustomIconButton(
                        icon: Iconsax.search_favorite,
                        onTap: () {
                          Get.to(const SearchView(),
                              transition: Transition.fadeIn,
                              duration: const Duration(milliseconds: 700));
                        },
                      ),
                    ],
                  ),
                ],
              ),
               const SizedBox(height: 20,),
            const  HomeGridViewBuilder()
            ],
          ),
        ));
  }
}
