import 'package:flutter/material.dart';
import 'package:mypro/core/utils/app_text_style.dart';
import '../../../../../../core/utils/app_color.dart';

class TopBar extends StatelessWidget {
  TopBar({required this.title, super.key});
  String title;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyCustomClipper(),
      child: Container(
          width: double.maxFinite,
          decoration: BoxDecoration(color: AppColor.primaryColor),
          height: MediaQuery.of(context).size.height * 0.24,
          child: Padding(
            padding: const EdgeInsets.only(right: 20, top: 35),
            child: Text(
              title,
              style: MyTextStyle.header,
            ),
          )),
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height * 0.9);
    path.quadraticBezierTo(
      size.width / 2,
      size.height / 6,
      0,
      size.height * 0.9,
    );
    path.lineTo(0, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
