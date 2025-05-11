import 'package:flutter/material.dart';
import 'package:mypro/features/home/presentation/views/widgets/custom_grid_view_item.dart';
import 'package:mypro/features/home/presentation/views/widgets/custom_grid_view_loading.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding:const EdgeInsets.only(top: 5),
      physics:const BouncingScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return const CustomGridViewLoading();
      },
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,
          childAspectRatio: 2.8 / 4),
    );
  }
}
