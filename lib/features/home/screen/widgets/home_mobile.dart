import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/core/helper/spacing.dart';
import 'welcome_overview.dart';
import 'home_image/home_image.dart';
import 'home_info.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 50.h),
      child: Column(
        children: [
          WelcomeOverview(),
          verticalSpace(20),
          Center(
            child: HomeImage(),
          ),
          verticalSpace(50),
          HomeInfo(),
        ],
      ),
    );
  }
}
