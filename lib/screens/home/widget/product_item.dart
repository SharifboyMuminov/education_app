import 'package:education_app/utils/app_colors.dart';
import 'package:education_app/utils/app_size.dart';
import 'package:education_app/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
    required this.onTab,
    required this.imagePath,
    this.title,
    this.subTitle,
    this.margin,
  });

  final VoidCallback onTab;
  final String imagePath;
  final String? title;
  final String? subTitle;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.symmetric(horizontal: 6.we),
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.r),
          ),
        ),
        onPressed: onTab,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            title != null
                ? Image.asset(
                    imagePath,
                    width: double.infinity,
                    fit: BoxFit.fill,
                  )
                : Image.asset(
                    imagePath,
                    width: 200.we,
                    height: 88.he,
                    fit: BoxFit.fill,
                  ),
            8.getH(),
            Text(
              title ?? "Junior Scholars Institute",
              style: AppTextStyle.interBold.copyWith(
                fontSize: 10.sp,
              ),
            ),
            8.getH(),
            Text(
              subTitle ?? "Jos Brown",
              style: AppTextStyle.interRegular.copyWith(
                fontSize: 8.sp,
                color: AppColors.c3F3F3F,
              ),
            ),
            8.getH(),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "5",
                  style: AppTextStyle.interBold.copyWith(
                    fontSize: 10.sp,
                    color: AppColors.cFFA41B,
                  ),
                ),
                3.getW(),
                ...List.generate(
                  5,
                  (index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 1.we),
                      child: SvgPicture.asset(
                        "assets/icons/star.svg",
                        width: 12.we,
                        height: 12.we,
                      ),
                    );
                  },
                ),
                7.getW(),
                Text(
                  "(1,454)",
                  style: AppTextStyle.interMedium.copyWith(
                    fontSize: 8.sp,
                    color: AppColors.c3F3F3F,
                  ),
                ),
              ],
            ),
            8.getH(),
            Text(
              "\$24",
              style: AppTextStyle.interBold.copyWith(
                fontSize: 10.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
