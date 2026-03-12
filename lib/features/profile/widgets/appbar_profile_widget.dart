import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:technical_assessment/core/themes/app_text_style.dart';

class AppbarProfileWidget  extends StatelessWidget {
  const AppbarProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.symmetric(horizontal: 2.w , vertical: 12.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Your Profile" , style: AppTextStyle.font16WhiteW700.copyWith(color: Colors.white),),
          Icon(Icons.settings,color: Colors.white,),
        ],
      ),
    );
  }
}
