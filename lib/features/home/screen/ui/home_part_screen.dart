import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/core/widgets/icons_link.dart';
import 'package:portfolio/features/home/screen/widgets/home_image.dart';
import 'package:portfolio/features/home/screen/widgets/home_name_and_logo.dart';
import 'package:portfolio/features/home/screen/widgets/home_tab_bar.dart';
import 'package:portfolio/features/home/screen/widgets/welcome_overview.dart';

class HomePartScreen extends StatelessWidget {
  const HomePartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:   EdgeInsets.symmetric(
        horizontal: 22.w ,
        vertical: 20.h
      ),
      color: Colors.white,
      child:   Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HomeNameAndLogo(),
              HomeTabBar(),
            ],
          ),
          SizedBox(
            height: 100.h,
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              WelcomeOverview(),
              HomeImage(),
            ],
          ),
           SizedBox(
            height: 30.h,
          ),
          const IconsLink(),
          SizedBox(
            height: 40.h,
          ),
        ],
      ),
    );
  }
}
