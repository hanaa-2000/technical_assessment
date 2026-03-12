import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:technical_assessment/core/helper/spacing.dart';
import 'package:technical_assessment/core/themes/app_text_style.dart';
import 'package:technical_assessment/features/home/data/venue_model.dart';
import 'package:technical_assessment/features/home/widgets/venue_card_widget.dart';

class VenueSelectionWidget extends StatefulWidget {
  const VenueSelectionWidget({super.key, required this.venues});

  final List<VenueModel> venues;

  @override
  State<VenueSelectionWidget> createState() => _VenueSelectionWidgetState();
}

class _VenueSelectionWidgetState extends State<VenueSelectionWidget>
    with TickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 1200),
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
      children: [
        Text(
          'Venue Selection',
          style: AppTextStyle.font13WhiteW700,
        ),
        verticalSpace(16),
        MasonryGridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          itemCount: widget.venues.length,
          itemBuilder: (context, index) {
            return _buildAnimatedCard(index);
          },
        ),
      ],
    );
  }

  Widget _buildAnimatedCard(int index) {
    final animationDelay = index * 300;
    final delayedAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Interval(
          (animationDelay / 1200).clamp(0, 1),
          ((animationDelay + 400) / 1200).clamp(0, 1),
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
              ((animationDelay + 400) / 1200).clamp(0, 1),
              curve: Curves.easeOut,
            ),
          ),
        ),
        child: VenueCard(venue: widget.venues[index]),
      ),
    );
  }
}