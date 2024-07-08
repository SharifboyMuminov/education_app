import 'package:education_app/screens/sign_up/widget/auth_input.dart';
import 'package:education_app/utils/app_colors.dart';
import 'package:education_app/utils/app_size.dart';
import 'package:education_app/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          66.getH(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 21.we),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  "assets/icons/splash_icon.svg",
                  width: 42.we,
                  height: 40.he,
                ),
                8.getH(),
                Text(
                  "Create a\nnew account",
                  style: AppTextStyle.interBold.copyWith(
                    fontSize: 30.sp,
                    color: AppColors.c1E1F20,
                  ),
                ),
                DecoratedBox(
                  decoration: BoxDecoration(
                    color: AppColors.c4178F3,
                    borderRadius: BorderRadius.circular(5.r),
                  ),
                  child: SizedBox(
                    width: 26.we,
                    height: 3.he,
                  ),
                ),
              ],
            ),
          ),
          36.getH(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.we),
            child: Column(
              children: [
                AuthInput(
                  label: "Email or Phone number",
                  onChanged: (String value) {},
                  iconPath: "assets/icons/check.svg",
                ),
                24.getH(),
                AuthInput(
                  label: "Password",
                  onChanged: (String value) {},
                  iconPath: "assets/icons/eye.svg",
                  onTabEye: () {},
                ),
                24.getH(),
                AuthInput(
                  label: "Confirm password",
                  onChanged: (String value) {},
                  iconPath: "assets/icons/eye.svg",
                  onTabEye: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
