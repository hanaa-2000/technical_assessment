import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:technical_assessment/core/helper/extentions.dart';
import 'package:technical_assessment/core/helper/spacing.dart';
import 'package:technical_assessment/core/resources/app_assets_image.dart';
import 'package:technical_assessment/core/routing/routes.dart';
import 'package:technical_assessment/core/themes/app_color.dart';
import 'package:technical_assessment/core/themes/app_text_style.dart';

class LoyaltyPointsCard extends StatefulWidget {
  const LoyaltyPointsCard({super.key});

  @override
  State<LoyaltyPointsCard> createState() => _LoyaltyPointsCardState();
}

class _LoyaltyPointsCardState extends State<LoyaltyPointsCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _progressAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    );

    _progressAnimation = Tween<double>(begin: 0, end: 0.65).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeOut),
    );

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24.r),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
          AppColor.grey1Color,
          AppColor.grey2Color
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.32),
            blurRadius: 30,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          headerLoyaltyCard(),
          verticalSpace(16),
          Text(
              '21,750',
              style:AppTextStyle.font22WhiteW700
          ),
          verticalSpace(8),
          AnimatedBuilder(
            animation: _progressAnimation,
            builder: (context, child) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(12.r),
                clipBehavior: Clip.none,
                child: Stack(
                  children: [
                    Container(
                      height: 24.h,
                      decoration: BoxDecoration(
                        color: Colors.black.withValues(alpha: 0.5),
                        borderRadius: BorderRadius.circular(12.r),

                      ),
                    ),
                    FractionallySizedBox(
                      widthFactor: _progressAnimation.value,
                      child: Container(
                        height: 24.h,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              AppColor.darkGradintColor,
                              AppColor.lightGradintColor,
                            ],
                          ),
                          boxShadow: [
                            BoxShadow(
                              color:  AppColor.lightGradintColor,
                              blurRadius:2
                            )
                          ],
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                      ),

                    ),
                  ],
                ),
              );
            },
          ),
          verticalSpace(12),
          _buildCardFooter(),
        ],
      ),
    );
  }

  Widget headerLoyaltyCard(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("AlterNow" , style: AppTextStyle.font9WhiteW700.copyWith(color: Colors.white.withValues(alpha: .50)),),
            SizedBox(height:6.h,),
            Text("Loyalty Points" , style: AppTextStyle.font13WhiteW700,)

          ],
        ),
        GestureDetector(
            onTap: () {
              context.pushNamed(Routes.profile);
            },
            child: Icon(Icons.account_circle_outlined, color: Colors.white,)),
      ],
    );
  }


  Widget _buildCardFooter() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Total Orders',
              style:AppTextStyle.font9WhiteW700.copyWith(color: Colors.white.withValues(alpha: .57))
            ),
            horizontalSpace(6),
            Text(
              '24',
              style:AppTextStyle.font9GoldW700),
          ],
        ),
       verticalSpace(8),
        Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           _buildRecentItemsPreview(),
           const Spacer(),
           GestureDetector(
             onTap: () {
             }, child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical:8.h),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                              width: 1.5,
                            ),
                            borderRadius: BorderRadius.circular(16.r),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
             Text(
               'More details',
               style: AppTextStyle.font7WhiteW500,
               textAlign: TextAlign.center,
             ),
             horizontalSpace(4),
             Icon(
               Icons.arrow_forward_rounded,
               color: Colors.white,
               size: 8.sp,
             ),
                            ],
                          ),
                        ),
                      ),

         ],
       ),
      ],
    );
  }

  Widget _buildRecentItemsPreview() {
    final items = [
     AppAssetsImage.image1,
     AppAssetsImage.nobikoImage,
     AppAssetsImage.image3,
    ];

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        items.length,
            (index) => Padding(
          padding: EdgeInsets.only(left: index == 0 ? 0 :3.w),
          child: Container(
          padding: EdgeInsets.symmetric(horizontal: 14.w, vertical:14.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7.r),
              border: Border.all(
                color: Colors.black,
                width: 1,
              ),
              image: DecorationImage(
                image: AssetImage(items[index]),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }

}

