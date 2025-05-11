import 'package:flutter/material.dart';
import 'package:mypro/core/utils/app_color.dart';
import 'package:mypro/features/record/presentation/views/widgets/custom_grid_view_record_loading.dart';
import 'chose_between.dart';
import 'custom_grid_view_record_item.dart';
import 'inter_date.dart';

class BodyRecord extends StatelessWidget {
  const BodyRecord({super.key});

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
        padding: const EdgeInsets.all(18),
        child: Column(
          children: [
            InterDate(),
            const SizedBox(
              height: 15,
            ),
           const ChoseBetween(),
const SizedBox(height: 20),
            SizedBox(
              height: MediaQuery.of(context).size.height * .6,
              child: ListView.builder(
                padding:const EdgeInsets.only(top: 5),
                physics:const BouncingScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const CustomGridViewRecordItem();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
