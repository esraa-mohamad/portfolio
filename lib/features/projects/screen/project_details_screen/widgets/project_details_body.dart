import 'package:flutter/material.dart';
import 'package:portfolio/core/models/project_data_model.dart';
import 'package:portfolio/features/projects/screen/project_details_screen/widgets/project_overview.dart';
import 'package:portfolio/features/projects/screen/project_details_screen/widgets/project_title.dart';

class ProjectDetailsBody extends StatelessWidget {
  const ProjectDetailsBody({super.key, required this.projectDataModel});

  final ProjectDataModel projectDataModel;
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(
        children: [
           ProjectTitle(projectDataModel: projectDataModel,),
          ProjectOverview(projectDataModel: projectDataModel,),
        ],
      ),
    );
  }
}
