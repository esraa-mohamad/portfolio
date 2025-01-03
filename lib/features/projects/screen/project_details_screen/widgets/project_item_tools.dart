import 'package:flutter/material.dart';
import 'package:portfolio/core/models/project_data_model.dart';

import '../../../../../core/helper/spacing.dart';
import '../../../../../core/theme/app_text_styles.dart';
import '../../../../../core/theme/font_family_helper.dart';

class ProjectItemTools extends StatelessWidget {
  const ProjectItemTools({super.key, required this.projectDataModel});

  final ProjectDataModel projectDataModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Project tools',
          style: AppTextStyles.font30BlackBold(context)
              .copyWith(fontFamily: FontFamilyHelper.caveatFont,),
        ),
        verticalSpace(10),
        Text(
          projectDataModel.tools,
          style: AppTextStyles.font20LightBlueMedium(context)
              .copyWith(fontFamily: FontFamilyHelper.poppinsFont,),
        ),
      ],
    );
  }
}
