import 'package:flutter/material.dart';
import 'package:mypro/features/home/presentation/views/widgets/body_home.dart';

import '../../../../core/share_widgets/top_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

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
            child: TopBar(title: "مستودعي",),
          ),
         const Positioned(
            top: 95,
            left: 15,
            right: 15,
            child: BodyHome(),
          ),
        ],
      ),
    );
  }
}
