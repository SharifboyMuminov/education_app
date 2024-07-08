import 'package:education_app/screens/sign_up/sign_up_screen.dart';
import 'package:education_app/screens/widget/global_button.dart';
import 'package:education_app/utils/app_colors.dart';
import 'package:education_app/utils/app_size.dart';
import 'package:education_app/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: DecoratedBox(
        decoration: const BoxDecoration(
          gradient: AppColors.splashBackground,
        ),
        child: SizedBox(
          width: width,
          height: height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.we),
                child: Column(
                  children: [
                    205.getH(),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset(
                          "assets/icons/splash_icon.svg",
                          width: 63.we,
                          height: 60.he,
                        ),
                        16.getW(),
                        Text(
                          "EduVerse",
                          style: AppTextStyle.interBold.copyWith(
                            fontSize: 28.sp,
                            color: AppColors.c4178F3,
                          ),
                        ),
                      ],
                    ),
                    16.getH(),
                    Text(
                      "Empowering Minds, Igniting Futures.",
                      style: AppTextStyle.interRegular.copyWith(
                        fontSize: 16.sp,
                        color: AppColors.c030303,
                      ),
                    ),
                    40.getH(),
                    GlobalButton(
                        title: "Get Started",
                        onTab: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const SignUpScreen();
                              },
                            ),
                          );
                        }),
                  ],
                ),
              ),
              SvgPicture.asset(
                "assets/icons/splash_bottom_item.svg",
                fit: BoxFit.fill,
                width: width,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
