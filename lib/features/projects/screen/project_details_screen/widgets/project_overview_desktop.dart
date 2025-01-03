import 'package:flutter/material.dart';
import 'package:portfolio/core/models/project_data_model.dart';
import 'package:portfolio/features/projects/screen/project_details_screen/widgets/project_item_link.dart';
import 'package:portfolio/features/projects/screen/project_details_screen/widgets/project_item_tools.dart';

class ProjectOverviewDesktop extends StatelessWidget {
  const ProjectOverviewDesktop({super.key, required this.projectDataModel});

  final ProjectDataModel projectDataModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProjectItemTools(projectDataModel: projectDataModel),
        ProjectItemLink(projectDataModel: projectDataModel),
      ],
    );
  }
}
