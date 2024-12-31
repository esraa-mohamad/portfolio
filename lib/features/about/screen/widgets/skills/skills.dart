import 'package:flutter/material.dart';
import 'package:portfolio/core/widgets/adaptive_layout.dart';
import 'skills_items_list.dart';
import '../../../../../core/helper/spacing.dart';
import '../about_titles.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AboutTitles(title: 'Skills'),
        verticalSpace(30),
        AdaptiveLayout(
            mobileLayout: (context) => SkillsItemsList(crossAxisCount: 2,),
            tabletLayout: (context)=> SkillsItemsList(crossAxisCount: 3,),
            desktopLayout: (context) =>SkillsItemsList(crossAxisCount: 5,),
        ),
      ],
    );
  }
}
