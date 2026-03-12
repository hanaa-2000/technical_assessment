import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:technical_assessment/core/helper/spacing.dart';
import 'package:technical_assessment/features/home/widgets/appBar_widget.dart';
import 'package:technical_assessment/features/profile/widgets/appbar_profile_widget.dart';
import 'package:technical_assessment/features/profile/widgets/details_profile_widget.dart';
import 'package:technical_assessment/features/profile/widgets/profile_loyalty_history.dart';

class ProfileScreen  extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w , vertical:32.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppbarProfileWidget(),
              verticalSpace(16),
              DetailsProfileWidget(),
              verticalSpace(24),
              ProfileLoyaltyHistory(),
            ],
          ),
        ),
      ),
    );
  }
}
