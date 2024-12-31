import 'package:flutter/material.dart';
import 'package:portfolio/core/widgets/adaptive_layout.dart';
import '../../../../../core/helper/spacing.dart';
import 'experience_items_list.dart';
import '../about_titles.dart';

class Experience extends StatelessWidget {
  const Experience({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AboutTitles(
          title: 'Experience',
        ),
        verticalSpace(30),
        AdaptiveLayout(
          mobileLayout: (context)=>ExperienceItemsList(crossAxisCount: 1,),
          tabletLayout: (context)=>ExperienceItemsList(crossAxisCount: 2,),
          desktopLayout: (context)=>ExperienceItemsList(crossAxisCount: 2,),
        ),
      ],
    );
  }
}
