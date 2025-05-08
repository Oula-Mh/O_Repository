import 'package:flutter/material.dart';
import 'package:mypro/core/utils/app_color.dart';
import 'package:shimmer/shimmer.dart';

class CustomGridViewLoading extends StatelessWidget {
  const CustomGridViewLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColor.customCardColor,
      elevation: 5,
      shadowColor: Colors.grey.shade50,
      borderRadius: BorderRadius.circular(12),
      child: Shimmer.fromColors(
        highlightColor: Colors.white,
        baseColor: Colors.grey.shade300,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            Flexible(
              flex: 6,
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey.shade300,
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 3,
              child: Column(
                textDirection: TextDirection.rtl,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  Container(
                    color: Colors.grey.shade300,
                    height: 20,
                  ),
                  const SizedBox(height: 10),
                  Container(
                    color: Colors.grey.shade300,
                    height: 15,
                    width: 75,
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
