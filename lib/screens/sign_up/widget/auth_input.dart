import 'package:education_app/utils/app_colors.dart';
import 'package:education_app/utils/app_size.dart';
import 'package:education_app/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AuthInput extends StatelessWidget {
  const AuthInput({
    super.key,
    required this.label,
    required this.onChanged,
    required this.iconPath,
    this.onTabEye,
    this.obscureText = false,
  });

  final String label;
  final ValueChanged<String> onChanged;
  final String iconPath;
  final VoidCallback? onTabEye;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: AppTextStyle.interRegular.copyWith(
            fontSize: 14.sp,
            color: AppColors.c8F92A1,
          ),
        ),
        5.getH(),
        TextFormField(
          obscureText: obscureText,
          style: AppTextStyle.interMedium.copyWith(
            fontSize: 16.sp,
            color: AppColors.c030319,
          ),
          decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.c8F92A1.withOpacity(0.2),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.r),
              borderSide: const BorderSide(width: 0, color: Colors.transparent),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.r),
              borderSide: const BorderSide(width: 0, color: Colors.transparent),
            ),
            suffixIcon: iconPath.contains("check")
                ? Padding(
                    padding: EdgeInsets.all(8.we),
                    child: SvgPicture.asset(
                      iconPath,
                    ))
                : IconButton(
                    onPressed: onTabEye,
                    icon: SvgPicture.asset(
                      iconPath,
                    ),
                  ),
          ),
        ),
      ],
    );
  }
}
