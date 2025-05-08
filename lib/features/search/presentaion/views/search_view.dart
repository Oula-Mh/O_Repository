import 'package:flutter/material.dart';
import 'package:mypro/features/search/presentaion/views/widgets/body_search.dart';
import '../../../../core/share_widgets/top_bar.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: TopBar(title: "البحث",),
          ),
         const  Positioned(
            top: 95,
            left: 15,
            right: 15,
            child: BodySearch(),
          ),
        ],
      ),
    );
  }
}
