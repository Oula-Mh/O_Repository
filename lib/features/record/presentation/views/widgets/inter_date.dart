import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mypro/core/utils/app_text_style.dart';
import '../../../../../core/share_widgets/custom_icon_button.dart';
import '../../../../../core/utils/app_color.dart';

class InterDate extends StatefulWidget {
  InterDate({super.key});
  @override
  State<InterDate> createState() => _InterDateState();
}

class _InterDateState extends State<InterDate> {
  String date = "حدد التاريخ";

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          selectData(context);
        },
        child: Card(
          elevation: 2,
          shadowColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          child: Container(
            decoration: BoxDecoration(
                color: AppColor.customCardColor,
                borderRadius: BorderRadius.circular(16)),
            child: Padding(
                padding: const EdgeInsets.all(2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:const EdgeInsets.symmetric(horizontal: 12),
                      child: Text(
                        date,
                        style: MyTextStyle.subTitle,
                      ),
                    ),
                    CustomIconButton(
                      icon: Iconsax.filter_search,
                      onTap: () {},
                    )
                  ],
                )),
          ),
        ));
  }

  Future<void> selectData(BuildContext context) async {
    final ThemeData customTheme = ThemeData(
      colorScheme: ColorScheme.light(
          primary: AppColor.primaryColor, background: AppColor.secoundColor),
      textTheme: const TextTheme(
        headlineMedium: TextStyle(
          fontSize: 24.0,
        ),
      ),
      dialogTheme: DialogTheme(
        backgroundColor: AppColor.secoundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
    );

    final DateTime? picker = await showDatePicker(
      initialDate: DateTime.now(),
      firstDate: DateTime(2025, 1, 1),
      lastDate: DateTime.now(),
      context: context,
      // initialDatePickerMode: DatePickerMode.day,
      builder: (BuildContext context, Widget? child) {
        return Theme(data: customTheme, child: child!);
      },
    );
    if (picker != null && picker != date) {
      setState(() {
        date =
            '${picker.year.toString()}-${picker.month.toString().padLeft(2, '0')}-${picker.day.toString().padLeft(2, '0')}';
      });
    }
  }
}
