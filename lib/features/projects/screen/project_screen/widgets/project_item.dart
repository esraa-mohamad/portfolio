import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/core/helper/spacing.dart';
import 'package:portfolio/core/models/project_data_model.dart';

import '../../../../../core/routes/routes.dart';
import '../../../../../core/theme/app_color.dart';
import '../../../../../core/theme/app_text_styles.dart';
import '../../../../../core/theme/font_family_helper.dart';

class ProjectItem extends StatelessWidget {
  const ProjectItem({super.key, required this.projectDataModel, required this.index});

  final ProjectDataModel projectDataModel;
  final int index;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).pushNamed(Routes.projectDetailsScreen , arguments: projectDataModel);
      },
      child: Container(
        width: 250.w,
        height: 200.h,
        padding:  EdgeInsets.symmetric(horizontal: 18.w, vertical: 15.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15).r,
          boxShadow:  [
            BoxShadow(
              color: AppColor.bleuDeFrance,
              offset: Offset(-10, 15),
              blurRadius:2,
            )
          ],
          border: Border.all(
              color: AppColor.silverSand,
              width: 2
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '/ $index',
                style: AppTextStyles.font12WhiteSemiBold(context)
                    .copyWith(fontFamily: FontFamilyHelper.dynaPuffFont),
              ),
              verticalSpace(30),
              Text(
                projectDataModel.title,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
                style: AppTextStyles.font20BlackBold(context)
                    .copyWith(fontFamily: FontFamilyHelper.robotoFont),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
