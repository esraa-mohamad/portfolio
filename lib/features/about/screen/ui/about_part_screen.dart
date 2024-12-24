import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/core/helper/spacing.dart';
import 'package:portfolio/core/theme/app_color.dart';
import 'package:portfolio/features/about/screen/widgets/education/education.dart';
import 'package:portfolio/features/about/screen/widgets/experience.dart';
import 'package:portfolio/features/about/screen/widgets/quotes.dart';
import 'package:portfolio/features/about/screen/widgets/skills.dart';

class AboutPartScreen extends StatelessWidget {
  const AboutPartScreen({super.key, required this.globalKey});
  final GlobalKey  globalKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: globalKey,
      width: double.infinity,
      color: AppColor.lightGray,
      padding:  EdgeInsets.symmetric(
        vertical: 50.h,
        horizontal: 20.w,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Quotes(),
           verticalSpace(50),
          const Education(),
           SizedBox(
            height: MediaQuery.of(context).size.height * 0.07,
          ),
          Skills(),
           SizedBox(
             height: MediaQuery.of(context).size.height * 0.07,
          ),
          Experience()
        ],
      ),
    );
  }
}
