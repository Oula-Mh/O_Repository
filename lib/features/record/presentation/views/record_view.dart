import 'package:flutter/material.dart';
import 'package:mypro/features/record/presentation/views/widgets/body_record.dart';
import '../../../../core/share_widgets/top_bar.dart';

class RecordView extends StatelessWidget {
  const RecordView({super.key});

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
            child: TopBar(title: "سجل النشاطات",),
          ),
         const   Positioned(
            top: 90,
            left: 15,
            right: 15,
            child: BodyRecord(),
          ),
        ],
      ),
    );
  }
}
