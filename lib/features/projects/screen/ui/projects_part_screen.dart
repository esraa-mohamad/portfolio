import 'package:flutter/material.dart';
import 'package:portfolio/features/projects/screen/widgets/project_title.dart';
import 'package:portfolio/features/projects/screen/widgets/projects_list.dart';

class ProjectsPartScreen extends StatelessWidget {
  const ProjectsPartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      padding:  EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).size.height * 0.04,
        horizontal: MediaQuery.of(context).size.width * 0.08,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ProjectTitle(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.07,
          ),
           ProjectsList(),
        ],
      ),
    );
  }
}
