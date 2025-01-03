import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/core/helper/spacing.dart';
import 'package:portfolio/core/widgets/adaptive_layout.dart';
import '../widgets/project_title.dart';
import '../widgets/projects_list.dart';

class ProjectsPartScreen extends StatelessWidget {
  const ProjectsPartScreen({super.key, required this.globalKey});

  final GlobalKey globalKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: globalKey,
      width: double.infinity,
      color: Colors.white,
      padding: EdgeInsets.symmetric(
        vertical: 50.h,
        horizontal: 50.w,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ProjectTitle(),
          verticalSpace(50),
          AdaptiveLayout(
            mobileLayout: (context)=> ProjectsList(crossAxisCount: 1,),
            tabletLayout: (context)=> ProjectsList(crossAxisCount: 3,),
            desktopLayout: (context)=> ProjectsList(crossAxisCount: 5,),
          ),
          verticalSpace(70),
        ],
      ),
    );
  }
}
