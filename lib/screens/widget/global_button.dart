import 'package:education_app/utils/app_colors.dart';
import 'package:education_app/utils/app_size.dart';
import 'package:education_app/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GlobalButton extends StatelessWidget {
  const GlobalButton({super.key, required this.title, required this.onTab});

  final String title;
  final VoidCallback onTab;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 10.he),
          backgroundColor: AppColors.c1B08DA,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
        ),
        onPressed: onTab,
        child: Text(
          title,
          style: AppTextStyle.interMedium.copyWith(
            fontSize: 16.sp,
            color: AppColors.white,
          ),
        ),
      ),
    );
  }
}
