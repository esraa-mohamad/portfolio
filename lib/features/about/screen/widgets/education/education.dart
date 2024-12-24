import 'package:flutter/material.dart';
import 'package:portfolio/core/widgets/adaptive_layout.dart';
import '../../../../../core/helper/spacing.dart';
import '../about_titles.dart';
import 'education_info.dart';

class Education extends StatelessWidget {
  const Education({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AboutTitles(title: 'Education'),
        verticalSpace(20),
        AdaptiveLayout(
            mobileLayout: (context) => EducationInfo(),
            tabletLayout: (context)=> FittedBox(child: EducationInfo()),
            desktopLayout: (context)=> FittedBox(child: EducationInfo()),),
      ],
    );
  }
}
