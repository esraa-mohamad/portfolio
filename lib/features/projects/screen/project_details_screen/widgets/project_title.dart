import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/core/helper/app_lottie.dart';
import 'package:portfolio/core/helper/spacing.dart';
import 'package:portfolio/core/models/project_data_model.dart';
import 'package:portfolio/core/theme/app_color.dart';
import 'package:portfolio/core/theme/app_text_styles.dart';
import 'package:portfolio/core/theme/font_family_helper.dart';

class ProjectTitle extends StatelessWidget {
  const ProjectTitle({super.key, required this.projectDataModel});

  final ProjectDataModel projectDataModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
          horizontal: 70.w,
          vertical: 50.h ,
      ),
      color: AppColor.white,
      child: Column(
        children: [
          Align(
            alignment: AlignmentDirectional.topEnd,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                padding:  EdgeInsets.symmetric(
                  horizontal: 15.w,
                  vertical: 15.h,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                    color: AppColor.brandeisBlue,
                    width: 2,
                  ),
                ),
                child:  Icon(
                  Icons.close,
                  size: 30.sp,
                  color: AppColor.brandeisBlue,
                ),
              ),
            ),
          ),
         verticalSpace(120),
          Center(
            child: Text(
              projectDataModel.title,
              textAlign: TextAlign.center,
              maxLines: 2,
              style: AppTextStyles.font50BlueBold(context)
                  .copyWith(fontFamily: FontFamilyHelper.caveatFont),
            ),
          ),
          verticalSpace(120),
          Align(
            alignment: AlignmentDirectional.bottomEnd,
            child: Lottie.asset(
              AppLottie.mouse,
              height: 250.h
            ),
          ),
        ],
      ),
    );
  }
}
