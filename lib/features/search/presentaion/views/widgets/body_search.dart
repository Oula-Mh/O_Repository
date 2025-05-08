import 'package:flutter/material.dart';
import 'package:mypro/features/home/presentation/views/widgets/custom_grid_view_loading.dart';
import 'package:mypro/features/search/presentaion/views/widgets/search_result_grid_view.dart';
import 'package:mypro/features/search/presentaion/views/widgets/text_form_field_search.dart';
import '../../../../../core/utils/app_color.dart';

class BodySearch extends StatelessWidget {
  const BodySearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 2,
        color: AppColor.bodyCardColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: SizedBox(
            height: MediaQuery.of(context).size.height - (140),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormFieldSearch(),
                 SizedBox(
                  height: 20,
                ),
                Text("نتيجة البحث",style: TextStyle(fontSize: 18),),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                    child: SearchResultListView())
              ],
            ),
          ),
        ));
  }
}
