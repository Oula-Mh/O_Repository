import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mypro/core/utils/app_color.dart';

// ignore: must_be_immutable
class CustomNavigationBar extends StatelessWidget {
  CustomNavigationBar(
      {required this.onTap, required this.currentIndex, super.key});
  void Function(int) onTap;
  int currentIndex;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
        color: AppColor.backGroundIconColor,
        border:const Border(top: BorderSide(width: 0.2)),
      ),
      child: SnakeNavigationBar.color(
        backgroundColor: AppColor.backGroundIconColor,
        behaviour: SnakeBarBehaviour.floating,
        snakeShape: SnakeShape.circle,
        padding: const EdgeInsets.symmetric(vertical: 3),
        snakeViewColor: AppColor.primaryColor,
        unselectedItemColor: Colors.brown,
        selectedItemColor: Colors.white,
        showSelectedLabels: true,
        currentIndex: currentIndex,
        onTap: onTap,
        items:  [
          BottomNavigationBarItem(
            icon:IconBottomNavigation(Iconsax.home),),
          BottomNavigationBarItem(
            icon:IconBottomNavigation(Iconsax.folder),),
          BottomNavigationBarItem(
            icon:IconBottomNavigation(Iconsax.personalcard),),
          BottomNavigationBarItem(
              icon:IconBottomNavigation(Iconsax.back_square),)
        ],
      ),
    );
  }
}
Widget IconBottomNavigation(IconData iconData) {
    return Icon(
      iconData,
      size: 26,
    );

}
