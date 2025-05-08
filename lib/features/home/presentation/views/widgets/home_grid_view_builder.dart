import 'package:flutter/material.dart';
import 'custom_grid_view_item.dart';

class HomeGridViewBuilder extends StatelessWidget {
  const HomeGridViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: 20,
      itemBuilder: (context, index) {
        return const CustomGridViewItem();
      },
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,
          childAspectRatio: 2.8 / 4),
    );
  }
}
