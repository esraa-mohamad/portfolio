import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/theme/app_color.dart';
import '../widgets/education/education.dart';
import '../widgets/experience/experience.dart';
import '../widgets/quotes.dart';
import '../widgets/skills/skills.dart';

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
           verticalSpace(70),
          const Education(),
           verticalSpace(70),
          Skills(),
          verticalSpace(70),
          Experience(),
          verticalSpace(50),
        ],
      ),
    );
  }
}
