import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:technical_assessment/core/helper/extentions.dart';
import 'package:technical_assessment/core/routing/routes.dart';
import 'package:technical_assessment/core/themes/app_text_style.dart';

import '../../../core/shared_widgets/gradint_text.dart';

class AppbarWidget  extends StatelessWidget {
  const AppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.symmetric(horizontal: 12.w , vertical: 12.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Welcome Back," , style: AppTextStyle.font10WhiteW700.copyWith(color: Colors.white.withValues(alpha: .60)),)  ,
              GradientText(  Text("Asmar Ajlouni" , style: AppTextStyle.font16WhiteW700,)  ,)
            ],
          ),
          GestureDetector(
            onTap: () {
            context.pushNamed(Routes.profile);
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8.w , vertical: 8.h),
              decoration: ShapeDecoration(
                 color: Colors.white12,
                  shape: CircleBorder(
                    side: BorderSide(
                      width: 1.w,
                      color: Colors.white24
                    )
                  ),
              ),
            child: Icon(Icons.account_circle_outlined , color: Colors.white,),
            ),
          )
        ],
      ),
    );
  }
}
