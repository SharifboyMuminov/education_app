import 'package:education_app/screens/home/home_screen.dart';
import 'package:education_app/screens/sign_up/widget/auth_input.dart';
import 'package:education_app/screens/widget/global_button.dart';
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
  bool checkValue = false;
  bool obscureTextPassword = false;
  bool obscureTextConfirmPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                    obscureText: obscureTextPassword,
                    label: "Password",
                    onChanged: (String value) {},
                    iconPath: "assets/icons/eye.svg",
                    onTabEye: () {
                      setState(() {
                        obscureTextPassword = !obscureTextPassword;
                      });
                    },
                  ),
                  24.getH(),
                  AuthInput(
                    obscureText: obscureTextConfirmPassword,
                    label: "Confirm password",
                    onChanged: (String value) {},
                    iconPath: "assets/icons/eye.svg",
                    onTabEye: () {
                      setState(() {
                        obscureTextConfirmPassword =
                            !obscureTextConfirmPassword;
                      });
                    },
                  ),
                  24.getH(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Transform.scale(
                        scale: 1.22,
                        child: Checkbox.adaptive(
                          checkColor: AppColors.white,
                          activeColor: AppColors.c1B08DA,
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          value: checkValue,
                          onChanged: (v) {
                            setState(() {
                              checkValue = !checkValue;
                            });
                          },
                        ),
                      ),
                      12.getW(),
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                            text: "By creating an account, you aggree to our",
                            style: AppTextStyle.interRegular.copyWith(
                              fontSize: 14.sp,
                              color: AppColors.c8F92A1,
                            ),
                            children: [
                              TextSpan(
                                text: " Term and Conditions",
                                style: AppTextStyle.interRegular.copyWith(
                                  fontSize: 14.sp,
                                  color: AppColors.c1B08DA,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  40.getH(),
                  GlobalButton(
                    title: "Create Account",
                    onTab: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const HomeScreen();
                          },
                        ),
                      );
                    },
                  ),
                  70.getH(),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Already have an account?",
                        style: AppTextStyle.interRegular.copyWith(
                          fontSize: 16.sp,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Log in",
                          style: AppTextStyle.interMedium.copyWith(
                            fontSize: 16.sp,
                            color: AppColors.c1B08DA,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
