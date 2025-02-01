import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/core/helper/spacing.dart';
import 'package:portfolio/core/models/project_data_model.dart';
import 'package:portfolio/core/widgets/adaptive_layout.dart';
import 'package:portfolio/features/projects/screen/project_details_screen/widgets/project_item_overview.dart';
import 'package:portfolio/features/projects/screen/project_details_screen/widgets/project_overview_desktop.dart';
import 'package:portfolio/features/projects/screen/project_details_screen/widgets/project_overview_mobile.dart';

class ProjectOverview extends StatelessWidget {
  const ProjectOverview({super.key, required this.projectDataModel});

  final ProjectDataModel projectDataModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: 70.w,
        vertical: 50.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProjectItemOverview(projectDataModel: projectDataModel),
          verticalSpace(100),
          AdaptiveLayout(
              mobileLayout: (context) =>
                  ProjectOverviewMobile(projectDataModel: projectDataModel),
              tabletLayout: (context)=>ProjectOverviewDesktop(projectDataModel: projectDataModel,),
              desktopLayout: (context)=>ProjectOverviewDesktop(projectDataModel: projectDataModel,),
          ),
          verticalSpace(50),
        ],
      ),
    );
  }
}
