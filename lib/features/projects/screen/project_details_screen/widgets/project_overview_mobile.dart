import 'package:flutter/material.dart';
import 'package:portfolio/core/helper/spacing.dart';
import 'package:portfolio/core/models/project_data_model.dart';
import 'package:portfolio/features/projects/screen/project_details_screen/widgets/project_item_link.dart';
import 'package:portfolio/features/projects/screen/project_details_screen/widgets/project_item_tools.dart';

class  ProjectOverviewMobile extends StatelessWidget {
  const  ProjectOverviewMobile({super.key, required this.projectDataModel});

  final ProjectDataModel projectDataModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProjectItemTools(projectDataModel: projectDataModel),
        verticalSpace(50),
        Center(
          child: ProjectItemLink(projectDataModel: projectDataModel),
        ),
      ],
    );
  }
}
