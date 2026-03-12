import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:technical_assessment/core/themes/app_color.dart';

class  AppTextStyle {
  static TextStyle font10WhiteW700 = TextStyle(
    fontSize: 10.sp,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    fontFamily: "Satoshi Variable",
  );
  static TextStyle font11WhiteW700 = TextStyle(
    fontSize: 11.sp,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    fontFamily: "Satoshi Variable",
  );
  static TextStyle font16WhiteW700 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    fontFamily: "Satoshi Variable",
  );
  static TextStyle font22WhiteW700=TextStyle(
    fontSize: 22.sp,
    fontWeight: FontWeight.bold,
    fontFamily: "Satoshi Variable",
    letterSpacing: -1,
    color:AppColor.gradintTextColor,
    height: 1,
  );
  static TextStyle font9WhiteW700=TextStyle(
    fontSize: 9.sp,
    fontWeight: FontWeight.bold,
    fontFamily: "Satoshi Variable",
    color: Colors.white
  );
  static TextStyle font13WhiteW700=TextStyle(
      fontSize:13.sp,
      fontWeight: FontWeight.bold,
      fontFamily: "Satoshi Variable",
      color: Colors.white,
     letterSpacing: -0.5,
     height: 1,
  );

  static TextStyle font9GoldW700=TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.bold,
    fontFamily: "Satoshi Variable",
    color:AppColor.primaryColor,
    letterSpacing: -1,
    height: 1,
  );
  static TextStyle font10WhiteW500=TextStyle(
    fontSize: 10.sp,
    fontWeight: FontWeight.w500,
    fontFamily: "Satoshi Variable",
    color:Colors.white,
    letterSpacing: -1,
    height: 1,
  );

  static TextStyle font12GoldW700=TextStyle(
    fontSize:12.sp,
    fontWeight: FontWeight.w700,
    fontFamily: "Satoshi Variable",
    color:AppColor.gradintTextColor,
    letterSpacing: -1,
    height: 1,
  );
  static TextStyle font12WhiteW700=TextStyle(
    fontSize:12.sp,
    fontWeight: FontWeight.w700,
    fontFamily: "Satoshi Variable",
    color:Colors.white,
    letterSpacing: -1,
    height: 1,
  );
  static TextStyle font8BlackW700=TextStyle(
    fontSize:8.sp,
    fontWeight: FontWeight.w700,
    fontFamily: "Satoshi Variable",
    color:Colors.black,
    letterSpacing: -0.3,
  );
  static TextStyle font7WhiteW500=TextStyle(
    fontSize:7.sp,
    fontWeight: FontWeight.w500,
    fontFamily: "Satoshi Variable",
    color:Colors.white,
    letterSpacing: -0.3,
  );

}