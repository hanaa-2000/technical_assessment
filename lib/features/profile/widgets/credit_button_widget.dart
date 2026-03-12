import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:technical_assessment/core/themes/app_color.dart';
import 'package:technical_assessment/core/themes/app_text_style.dart';

class CreditsButton extends StatelessWidget {
  final int credits;
  final VoidCallback? onTap;

  const CreditsButton({
    super.key,
    required this.credits,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 12.w,
          vertical: 6.h,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              AppColor.lightGradintColor,
              AppColor.darkGradintColor
            ],
          ),
          border: Border.all(
            color:AppColor.borderColor,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(7.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.15),
              blurRadius: 7,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Text(
          '$credits Credits',
          style:AppTextStyle.font8BlackW700
        ),
      ),
    );
  }
}