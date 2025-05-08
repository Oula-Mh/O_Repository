import 'package:flutter/material.dart';
import 'package:mypro/core/utils/app_text_style.dart';
import '../../../../../core/utils/app_color.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyCustomClipper(),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [const Color(0xfffde5bb), AppColor.primaryColor],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft)),
        height: MediaQuery.of(context).size.height * 0.35,
        child: const Center(
          child: Text(
            '! أهلاً بك',
            style: MyTextStyle.header,
          ),
        ),
      ),
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height / 1.7);
    path.cubicTo(size.width / 4, 3 * (size.height / 2), 3 * (size.width / 4),
        size.height / 2, size.width, size.height * 1);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
 