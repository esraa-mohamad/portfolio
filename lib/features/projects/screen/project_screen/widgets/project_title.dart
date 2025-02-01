import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/app_text_styles.dart';
import 'package:portfolio/core/theme/font_family_helper.dart';

class ProjectTitle extends StatelessWidget {
  const ProjectTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'My Projects' ,
        style: AppTextStyles.font30BleuDeFranceBold(context).copyWith(
          fontFamily: FontFamilyHelper.dynaPuffFont
        ),
      ),
    );
  }
}
