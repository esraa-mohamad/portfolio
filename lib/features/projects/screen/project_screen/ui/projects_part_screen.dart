import 'package:flutter/material.dart';

import '../widgets/project_title.dart';
import '../widgets/projects_list.dart';


class ProjectsPartScreen extends StatelessWidget {
  const ProjectsPartScreen({super.key, required this.globalKey});

  final GlobalKey  globalKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: globalKey,
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
