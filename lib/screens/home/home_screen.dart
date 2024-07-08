import 'package:education_app/data/local/local_varibals.dart';
import 'package:education_app/screens/home/widget/product_item.dart';
import 'package:education_app/utils/app_colors.dart';
import 'package:education_app/utils/app_size.dart';
import 'package:education_app/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: 30.he),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            72.getH(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.we),
              child: RichText(
                text: TextSpan(
                  text: "Recommended",
                  style: AppTextStyle.interBold.copyWith(
                    fontSize: 16.sp,
                  ),
                  children: [
                    TextSpan(
                      text: " courses",
                      style: AppTextStyle.interBold.copyWith(
                        fontSize: 16.sp,
                        color: AppColors.c525FE1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            16.getH(),
            SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 10.we),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  images.length,
                  (index) {
                    return ProductItem(
                      onTab: () {},
                      imagePath: images[index],
                    );
                  },
                ),
              ),
            ),
            30.getH(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.we),
              child: RichText(
                text: TextSpan(
                  text: "Top",
                  style: AppTextStyle.interBold.copyWith(
                    fontSize: 16.sp,
                  ),
                  children: [
                    TextSpan(
                      text: " trending",
                      style: AppTextStyle.interBold.copyWith(
                        fontSize: 16.sp,
                        color: AppColors.c525FE1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            16.getH(),
            SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 10.we),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  images.length,
                  (index) {
                    return ProductItem(
                      onTab: () {},
                      imagePath: images[index],
                    );
                  },
                ),
              ),
            ),
            26.getH(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.we),
              child: RichText(
                text: TextSpan(
                  text: "Our",
                  style: AppTextStyle.interBold.copyWith(
                    fontSize: 16.sp,
                  ),
                  children: [
                    TextSpan(
                      text: " top picks",
                      style: AppTextStyle.interBold.copyWith(
                        fontSize: 16.sp,
                        color: AppColors.c525FE1,
                      ),
                    ),
                    TextSpan(
                      text: " for you",
                      style: AppTextStyle.interBold.copyWith(
                        fontSize: 16.sp,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            16.getH(),
            ...List.generate(
              3,
              (index) {
                return ProductItem(
                  onTab: () {},
                  imagePath: 'assets/images/img_2.png',
                  title: "Programming for beginner",
                  subTitle: "Alex Chris ",
                  margin: EdgeInsets.only(
                    left: 16.we,
                    right: 16.we,
                    bottom: 12.he,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
