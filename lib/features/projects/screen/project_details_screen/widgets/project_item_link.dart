import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/core/helper/spacing.dart';
import 'package:portfolio/core/models/project_data_model.dart';

import '../../../../../core/helper/app_functions.dart';
import '../../../../../core/theme/app_color.dart';
import '../../../../../core/theme/app_text_styles.dart';
import '../../../../../core/theme/font_family_helper.dart';

class ProjectItemLink extends StatelessWidget {
  const ProjectItemLink({super.key, required this.projectDataModel});

  final ProjectDataModel projectDataModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Project link',
          style: AppTextStyles.font30BlackBold(context)
              .copyWith(fontFamily: FontFamilyHelper.caveatFont,),
        ),
        verticalSpace(10),
        GestureDetector(
          onTap: () {
            AppFunctions.launchLinks(projectDataModel.linkUrl);
          },
          child: Flexible(
            child: Container(
              padding:  EdgeInsets.symmetric(
                  horizontal: 20.w, vertical: 15.h,),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                boxShadow:  [
                  BoxShadow(
                    color: AppColor.bleuDeFrance,
                    offset: Offset(-15, 10),
                    blurRadius: 0.2,
                  ),
                ],
                border: Border.all(color: AppColor.silverSand, width: 1,),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'See My Work  ',
                      style: AppTextStyles.font18BlackSemiBold(context).copyWith(
                        fontFamily: FontFamilyHelper.caveatFont,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      size: 18.sp,
                      color: AppColor.black,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
