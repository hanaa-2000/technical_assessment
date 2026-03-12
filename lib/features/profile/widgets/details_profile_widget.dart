import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:technical_assessment/core/helper/spacing.dart';
import 'package:technical_assessment/core/themes/app_color.dart';
import 'package:technical_assessment/core/themes/app_text_style.dart';

class DetailsProfileWidget  extends StatelessWidget {
  const DetailsProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
       Row(
         children: [
           CircleAvatar(
             radius: 25.r,
             backgroundColor: AppColor.greyColor,
             backgroundImage: AssetImage("assets/images/fa435c6b2ae0de23e089e9bf9ce1c2ef520cdfcb.png"),
           ),
           horizontalSpace(12),
           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Text("Asmar Ajlouni" , style: AppTextStyle.font11WhiteW700,),
               Text("+962 234 567 2349" , style: AppTextStyle.font9GoldW700,)
             ],
           )
         ],
       ),
        const Spacer(),
        Text("Edit" , style: AppTextStyle.font9GoldW700.copyWith(color: AppColor.lightGradintColor),)

      ],
    );
  }
}
