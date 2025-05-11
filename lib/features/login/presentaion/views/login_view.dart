import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:mypro/core/utils/app_color.dart';
import 'package:mypro/core/utils/app_router.dart';
import 'package:mypro/features/login/presentaion/views/widgets/custom_button_auth.dart';
import 'package:mypro/features/login/presentaion/views/widgets/text_form_field_auth.dart';
import 'package:mypro/features/login/presentaion/views/widgets/top_bar.dart';

import '../../../../core/buttomNavigationBar/main_page.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.secoundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TopBar(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: ListView(
                children: [
                  const Text(
                    'رقم الهاتف :',
                    textAlign: TextAlign.right,
                  ),
                  const SizedBox(height: 5),
                  TextFormFieldAuth(
                    isNumber: true,
                    hintText: "ادخل رقم هاتفك",
                    iconData: Icons.phone,
                    isPassword: false,
                    passToggle: false,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'كلمة المرور :',
                    textAlign: TextAlign.right,
                  ),
                  const SizedBox(height: 5),
                  TextFormFieldAuth(
                    isNumber: false,
                    hintText: "ادخل كلمة المرور",
                    iconData: Icons.lock,
                    isPassword: true,
                    passToggle: true,
                  ),
                  const SizedBox(height: 40),
                  CustomButtomAuth(
                    onPressed: () {
                      // Get.to(const MainPage(),
                      //     transition: Transition.rightToLeft);
                      GoRouter.of(context).push(AppRoute.main);

                    },
                    textButtom: 'تسجيل الدخول',
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
