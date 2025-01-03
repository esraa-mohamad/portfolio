import 'package:flutter/material.dart';
import 'package:portfolio/core/models/project_data_model.dart';

import '../../../../../core/helper/spacing.dart';
import '../../../../../core/theme/app_text_styles.dart';
import '../../../../../core/theme/font_family_helper.dart';

class ProjectItemOverview extends StatelessWidget {
  const ProjectItemOverview({super.key, required this.projectDataModel});

  final ProjectDataModel projectDataModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        verticalSpace(80),
        Text(
          'Project Overview',
          style: AppTextStyles.font50BlackBold(context).copyWith(
            fontFamily: FontFamilyHelper.caveatFont,
          ),
        ),
        verticalSpace(30),
        Text(
          projectDataModel.description,
          style: AppTextStyles.font18LightBlueMedium(context).copyWith(
            fontFamily: FontFamilyHelper.poppinsFont,
          ),
        ),
      ],
    );
  }
}
