import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:technical_assessment/core/helper/spacing.dart';
import 'package:technical_assessment/core/resources/app_assets_image.dart';
import 'package:technical_assessment/features/home/data/venue_model.dart';
import 'package:technical_assessment/features/home/widgets/appBar_widget.dart';
import 'package:technical_assessment/features/home/widgets/loyalty_points_widget.dart';
import 'package:technical_assessment/features/home/widgets/venue_selection_widget.dart';

class HomeScreen  extends StatelessWidget {
   HomeScreen({super.key});


  final List<VenueModel> venues = [
    VenueModel(
      title: "Ceano",
      subtitle: "Nikkei",
      image:
      AppAssetsImage.rest2Image,
      height: 1.3,
    ),
    const VenueModel(
      title: "Nobiko",
      subtitle: "Restaurant",
      image:
      AppAssetsImage.nobiko1Image,
      height: 1,
    ),
    const VenueModel(
      title: "Dovely",
      subtitle: "Casual",
      image:
      AppAssetsImage.rest3Image,
      height: 1.1,
    ),
    const VenueModel(
      title: "Olivestree",
      subtitle: "Bakery",
      image:
      AppAssetsImage.rest4Image,
      height: 1,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SingleChildScrollView(
         child: Padding(
           padding: EdgeInsetsGeometry.symmetric(horizontal: 16.w , vertical: 32.h),
           child: Column(
             children: [
               AppbarWidget(),
               verticalSpace(8),
               LoyaltyPointsCard(),
               verticalSpace(16),
               VenueSelectionWidget(venues: venues,),
         
             ],
           ),
         ),
       ),
    );
  }
}