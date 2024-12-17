import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/core/helper/spacing.dart';
import 'home_image/home_image.dart';
import 'home_info.dart';
import 'welcome_overview.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(
        horizontal: 30.w ,
        vertical: 70.h
    ) ,child: Column(
    children: [
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(child: WelcomeOverview()),
        horizontalSpace(25),
        Flexible(child: HomeImage()),
      ],
    ),
    verticalSpace(50),
    HomeInfo(),
    ],
    ),);
  }
}
