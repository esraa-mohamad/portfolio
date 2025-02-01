import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/core/helper/spacing.dart';

import '../../../../../core/theme/app_color.dart';
import '../../../../../core/theme/app_text_styles.dart';
import '../../../../../core/theme/font_family_helper.dart';

class ExperienceItem extends StatelessWidget {
  const ExperienceItem({
    super.key,
    required this.logo,
    required this.title,
    required this.description,
    required this.time,
  });

  final String logo;
  final String title;
  final String description;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
      decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.circular(15).r,
          boxShadow:  [
            BoxShadow(
              color: AppColor.bleuDeFrance.withAlpha(50),
              blurRadius: 5,
              offset: Offset(5, 5),
            ),
          ],),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12).r,
                    border: Border.all(
                      color: AppColor.brandeisBlue,
                      width: 2,
                    ),
                ),
                padding:
                     EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                child: Image.asset(
                  logo,
                  width: 80.w,
                  height: 80.h,
                  fit: BoxFit.scaleDown,
                ),
              ),
              horizontalSpace(30),
              Expanded(
                child: Text(
                  title,
                  maxLines: 2,
                  style: AppTextStyles.font20BlackBold(context).copyWith(
                    fontFamily: FontFamilyHelper.robotoFont,
                  ),
                ),
              ),
            ],
          ),
          verticalSpace(20),
          Text(
            description,
            overflow: TextOverflow.ellipsis,
            maxLines: 7,
            style: AppTextStyles.font16PhilippineGrayMedium(context).copyWith(
              fontFamily: FontFamilyHelper.poppinsFont,
            ),
          ),
          Expanded(
            child: Align(
              alignment: AlignmentDirectional.bottomEnd,
              child: Text(
                time,
                style:
                    AppTextStyles.font16BrandeisBlueMedium(context).copyWith(
                  fontFamily: FontFamilyHelper.poppinsFont,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
