import 'package:flutter/material.dart';
import 'package:mypro/core/share_widgets/custom_icon_button.dart';
import 'package:mypro/core/utils/app_color.dart';
import 'package:mypro/core/utils/app_text_style.dart';
import 'package:iconsax/iconsax.dart';
import 'custom_grid_view_alnaal_item.dart';

class BodyAlnaal extends StatelessWidget {
  const BodyAlnaal({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const NumberModelAndImage(),
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
                  Flexible(
                      flex: 10,
                      child:
                      ListView.builder(
                          itemCount: 10,
                          itemBuilder: (context,index){return CustomGridViewAlnaalItem();})
                  )
                ],
              ),
            )) ,)

      ],
    );
  }
}

class NumberModelAndImage extends StatelessWidget {
  const NumberModelAndImage({super.key});

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
                  '124',
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
