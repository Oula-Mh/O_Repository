import 'package:flutter/material.dart';
import 'package:mypro/core/share_widgets/custom_icon_button.dart';
import 'package:mypro/core/utils/app_color.dart';
import 'package:mypro/core/utils/app_text_style.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mypro/features/home/data/models/shoes_models_model.dart';
import 'alnaal_list_view_builder.dart';
import 'custom_grid_view_alnaal_item.dart';
import 'number_model_and_image.dart';

class BodyAlnaal extends StatelessWidget {
   BodyAlnaal({required this.shoesModelsModel,super.key});
ShoesModelsModel shoesModelsModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         NumberModelAndImage(shoesModelsModel: shoesModelsModel,),
        const SizedBox(
          height: 10,
        ),
        Card(
          elevation: 2,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          child:Container(
            decoration: BoxDecoration(
              color: AppColor.bodyCardColor,
              borderRadius: BorderRadius.circular(30),
            ),
            height: MediaQuery.of(context).size.height - (250),
            child: Padding(
              padding: const EdgeInsets.all(14),
              child: Column(
                children: [
                  Flexible(
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "النعال",
                              style: TextStyle(fontSize: 27),
                            ),
                            CustomIconButton(icon: Iconsax.element_plus,onTap: (){},)
                          ],
                        ),
                      )),
                  const SizedBox(height: 20),
                  Flexible(
                      flex: 10,
                      child:
                      AlnaalListViewBuilder()
                  )
                ],
              ),
            )) ,)

      ],
    );
  }
}

