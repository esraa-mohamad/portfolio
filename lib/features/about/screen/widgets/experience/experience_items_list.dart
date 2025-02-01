import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/features/about/screen/widgets/experience/experience_item.dart';

import '../../../../../core/helper/app_images.dart';
import '../../../../../core/models/experience_data_model.dart';

class ExperienceItemsList extends StatelessWidget {
  ExperienceItemsList({super.key, required this.crossAxisCount});

  final int crossAxisCount ;
  final List<ExperienceDataModel> experienceItems = [
    ExperienceDataModel(
      iconPath: AppImages.gdscLogo,
      title: 'Bootcamp GDSC Benha',
      description: "- Instructor & Technical flutter in volunteer community "
          "\n- Devised, facilitated, and taught the Flutter instruction components with +40 h of teaching "
          "\n- Lead 5 teams in work shop and practice explaining in sessions "
          "\n- Getting students ready for a competition at the end of the bootcamp",
      time: '2 weeks in 06/22',
    ),
    ExperienceDataModel(
      iconPath: AppImages.careerLogo,
      title: 'Career 180 , Learn It',
      description: "- Flutter Bootcamp "
          "\n- Theoretical explanation of reviewing filters "
          "\n- Working on many projects "
          "\n- Training and understanding the labor market "
          "\n- Hiring Jobs",
      time: '09/2024 - 11/2024',
    ),
    ExperienceDataModel(
      iconPath: AppImages.innovateLogo,
      title: 'Innovate X Solution',
      description: "- Flutter Internship "
          "\n- Working on portfolio project of company "
          "\n- Preparing for freelance work",
      time: '09/2024 - Present',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.symmetric(horizontal: 25.w),
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: experienceItems.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: 35.w,
          mainAxisSpacing: 25.h,
          mainAxisExtent: 400.h,
      ),
      itemBuilder: (context, index) {
        return ExperienceItem(
          logo: experienceItems[index].iconPath,
          title: experienceItems[index].title,
          description: experienceItems[index].description,
          time: experienceItems[index].time,
        );
      },
    );
  }
}
