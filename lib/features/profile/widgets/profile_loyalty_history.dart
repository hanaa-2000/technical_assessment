import 'package:flutter/material.dart';
import 'package:technical_assessment/core/helper/spacing.dart';
import 'package:technical_assessment/core/themes/app_text_style.dart';
import 'package:technical_assessment/features/profile/widgets/card_loyalty_item_widget.dart';

class ProfileLoyaltyHistory extends StatefulWidget {
  const ProfileLoyaltyHistory({super.key});

  @override
  State<ProfileLoyaltyHistory> createState() => _ProfileLoyaltyHistoryState();
}

class _ProfileLoyaltyHistoryState extends State<ProfileLoyaltyHistory>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  final int itemCount = 6;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Loyalty History",
          style: AppTextStyle.font12WhiteW700,
        ),
        verticalSpace(12),
        ListView.builder(
          shrinkWrap: true,
          itemCount: itemCount,
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return _buildAnimatedItem(index);
          },
        ),
      ],
    );
  }

  Widget _buildAnimatedItem(int index) {
    final animationDelay = index * 100;
    final delayedAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Interval(
          (animationDelay / 1200).clamp(0, 1),
          ((animationDelay + 300) / 1200).clamp(0, 1),
          curve: Curves.easeOut,
        ),
      ),
    );

    return FadeTransition(
      opacity: delayedAnimation,
      child: SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(0, 0.3),
          end: Offset.zero,
        ).animate(
          CurvedAnimation(
            parent: _animationController,
            curve: Interval(
              (animationDelay / 1200).clamp(0, 1),
              ((animationDelay + 300) / 1200).clamp(0, 1),
              curve: Curves.easeOut,
            ),
          ),
        ),
        child: CardLoyaltyItemWidget(),
      ),
    );
  }
}