import 'package:flutter/material.dart';
import 'package:portfolio/core/models/project_data_model.dart';

import '../widgets/project_details_body.dart';

class ProjectDetailsScreen extends StatelessWidget {
  const ProjectDetailsScreen({super.key, required this.projectDataModel});

  final ProjectDataModel projectDataModel;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: ProjectDetailsBody(projectDataModel: projectDataModel,),
    );
  }
}
