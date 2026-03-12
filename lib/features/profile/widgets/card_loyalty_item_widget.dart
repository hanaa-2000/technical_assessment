import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:technical_assessment/core/helper/spacing.dart';
import 'package:technical_assessment/core/resources/app_assets_image.dart';
import 'package:technical_assessment/core/shared_widgets/gradint_text.dart';
import 'package:technical_assessment/core/themes/app_color.dart';
import 'package:technical_assessment/core/themes/app_text_style.dart';
import 'package:technical_assessment/features/profile/widgets/credit_button_widget.dart';

class CardLoyaltyItemWidget  extends StatelessWidget {
  const CardLoyaltyItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w , vertical: 8.h),
      margin: EdgeInsets.symmetric(horizontal: 4.w , vertical: 8.h),
      decoration:BoxDecoration(
        color: AppColor.backgroundCardColor,
        borderRadius: BorderRadius.circular(11.r),
      ) ,
      child: Row(
         children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 13.w ,vertical:11.h),
            decoration:BoxDecoration(
             borderRadius: BorderRadius.circular(6.r),
             color: Colors.black,
            ) ,
           child: Center(
             child: Image.asset(AppAssetsImage.nobikoImage,width: 34.w,height: 30.h,),
           ),
         ) ,
          horizontalSpace(5),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Nobiko Bistro",style: AppTextStyle.font10WhiteW700,),
                  Text("06 Jan, 2025",style: AppTextStyle.font9WhiteW700,)
                ],
              ),
              verticalSpace(6),
              GradientText( Text("125.32 JD • 230 Credits",style: AppTextStyle.font9WhiteW700,)),

            ],
          ),
        const  Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
               CreditsButton(credits: 325,),
               verticalSpace(16),
               Icon(Icons.arrow_forward_ios,color: AppColor.lightGradintColor.withValues(alpha: .2),)
            ],
          ),

        ],
      ),
    );
  }
}
