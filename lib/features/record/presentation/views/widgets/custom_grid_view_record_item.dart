import 'package:flutter/material.dart';
import 'package:mypro/core/utils/app_text_style.dart';
import '../../../../../core/utils/app_color.dart';

class CustomGridViewRecordItem extends StatelessWidget {
  const CustomGridViewRecordItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 14),
        child: Card(
          color: Colors.brown.shade300,
          elevation: 5,
          shadowColor: Colors.grey.shade50,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  topRight: Radius.circular(10),
                  topLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)

              ),

          ),
            child: Container(
              decoration: BoxDecoration(borderRadius:
             const BorderRadius.only(
                  bottomLeft: Radius.circular(60),
                  topRight: Radius.circular(10),
                  topLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)
              ),
                color: AppColor.customCardColor,
              ),
              child:Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "رقم الموديل ",
                                  style: MyTextStyle.subTitle,
                                ),
                                SizedBox(
                                  width: 60,
                                  child: Divider(
                                    color: Colors.grey,
                                    thickness: 1,
                                    height: 1,
                                  ),
                                ),
                                Text(
                                  "رقم النعل ",
                                  style: MyTextStyle.subTitle,
                                ),
                              ],
                            ),
                            const Text(
                              " : ",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "125",
                                  style: TextStyle(fontSize: 18),
                                ),
                                Container(
                                  width: 30,
                                  height: 1,
                                  color: Colors.black,
                                ),
                                const Text(
                                  "200",
                                  style: TextStyle(fontSize: 18),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          width: 0.3,
                          height: 70,
                          color: Colors.grey,
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "اللون : ",
                                  style: MyTextStyle.subTitle,
                                ),
                                Icon(
                                  Icons.rectangle,
                                  color: Colors.brown,
                                  size: 26,
                                )
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Text(
                                  "الكمية : ",
                                  style: MyTextStyle.subTitle,
                                ),
                                Text("10000")
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
                    const
                    Row(
                      children: [
                        Icon(
                          Icons.date_range,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('12/1/2025')
                      ],
                    )

                  ],
                )) ,)

            ,
          ),
        );
  }
}
