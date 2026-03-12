import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:technical_assessment/core/themes/app_color.dart';
import 'package:technical_assessment/core/themes/app_text_style.dart';
import 'package:technical_assessment/features/home/data/venue_model.dart';

class VenueCard extends StatelessWidget {
  final VenueModel venue;

  const VenueCard({
    super.key,
    required this.venue,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: venue.height,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(9.r),
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                venue.image,
                fit: BoxFit.cover,
              ),
            ),

            Positioned.fill(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.transparent,
                      Colors.black.withValues(alpha: .3),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
            ),

            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 2, sigmaY:4),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8.w , vertical: 4.h),
                    color: Colors.black.withValues(alpha: .2),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  venue.subtitle,
                                  style: AppTextStyle.font9WhiteW700

                              ),
                              Text(
                                  venue.title,
                                  style:AppTextStyle.font12GoldW700
                              ),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color:AppColor.borderColor,width: 1),
                          ),
                          padding: const EdgeInsets.all(8),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                            color: AppColor.primaryColor,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}