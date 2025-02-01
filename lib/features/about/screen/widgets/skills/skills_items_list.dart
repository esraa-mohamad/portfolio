import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/features/about/screen/widgets/skills/skill_item.dart';

import '../../../../../core/helper/app_svg.dart';
import '../../../../../core/models/skill_model.dart';

class SkillsItemsList extends StatelessWidget {
   SkillsItemsList({super.key, required this.crossAxisCount});

   final int crossAxisCount;
  final List<SkillModel> skillsModel = [
    SkillModel(
      svgImage: AppSvg.dartIcon,
      title: 'Dart Language',
    ),
    SkillModel(
      svgImage: AppSvg.flutterIcon,
      title: 'Flutter',
    ),
    SkillModel(
      svgImage: AppSvg.blocIcon,
      title: 'BLOc',
    ),
    SkillModel(
      title: 'provider',
    ),
    SkillModel(
      title: 'GetIt',
    ),
    SkillModel(
      svgImage: AppSvg.apiIcon,
      title: 'RESTful API',
    ),
    SkillModel(
      title: 'MVVM',
    ),
    SkillModel(
      title: 'Clean Architecture',
    ),
    SkillModel(
      title: 'Hive',
    ),
    SkillModel(
      svgImage: AppSvg.sqlIcon,
      title: 'Sqflite',
    ),
    SkillModel(
      svgImage: AppSvg.cleanCodeIcon,
      title: 'Clean Code',
    ),
    SkillModel(
      svgImage: AppSvg.firebaseIcon,
      title: 'Firebase',
    ),
    SkillModel(
      svgImage: AppSvg.animationIcon,
      title: 'Animation',
    ),
    SkillModel(
      svgImage: AppSvg.problemSolvingIcon,
      title: 'Problem Solving',
    ),
    SkillModel(
      svgImage: AppSvg.gitIcon,
      title: 'Git',
    ),
    SkillModel(
      svgImage: AppSvg.githubIcon,
      title: 'GitHub',
    ),
    SkillModel(
      svgImage: AppSvg.postmanIcon,
      title: 'Postman',
    ),
    SkillModel(
      svgImage: AppSvg.figmaIcon,
      title: 'Figma',
    ),
    SkillModel(
      svgImage: AppSvg.sqlIcon,
      title: 'SQL',
    ),
    SkillModel(
      svgImage: AppSvg.pythonIcon,
      title: 'Python Language',
    ),
    SkillModel(
      svgImage: AppSvg.javaIcon,
      title: 'Java Language',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.symmetric(horizontal: 25.w),
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: skillsModel.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: 25.w ,
          mainAxisSpacing: 25.h ,
          mainAxisExtent: 70.h
      ),
      itemBuilder: (context, index) {
        return Flexible(
          child: SkillItem(
            skill: skillsModel[index].title ,
            image: skillsModel[index].svgImage,
          ),
        );
      },
    );
  }
}

