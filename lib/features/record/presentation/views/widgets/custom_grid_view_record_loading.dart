import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mypro/core/utils/app_text_style.dart';
import 'package:shimmer/shimmer.dart';
import '../../../../../core/utils/app_color.dart';

class CustomGridViewRecordLoading extends StatelessWidget {
  const CustomGridViewRecordLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 14),
        child: Card(
          color: AppColor.customCardColor,
          elevation: 5,
          shadowColor: Colors.grey.shade50,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  topRight: Radius.circular(10),
                  topLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)
              ),
          ),
          child: Shimmer.fromColors(
            highlightColor: Colors.white,
            baseColor: Colors.grey.shade300,
            child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 40,
                          width: 120,
                          color: Colors.grey.shade300,
                        ),
                        Container(
                          width: 0.3,
                          height: 70,
                          color: Colors.grey,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Container(
                                  color: Colors.grey.shade300,
                                  height: 20,
                                  width: 100,
                                ),
                              ],
                            ),
                           const SizedBox(height: 10),
                            Row(
                              children: [
                                Container(
                                  color: Colors.grey.shade300,
                                  height: 20,
                                  width: 100,
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,
                      height: 0.3,
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          color: Colors.grey.shade300,
                          height: 20,
                          width: 150,
                        ),
                      ],
                    )
                  ],
                )),
          ),
        ));
  }
}
