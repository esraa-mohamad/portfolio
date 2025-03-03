import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/core/helper/spacing.dart';

import '../../../../core/theme/app_color.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/theme/font_family_helper.dart';

class AboutTitles extends StatelessWidget {
  const AboutTitles({super.key, required this.title});

  final String title ;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 80.w,
          height: 2.h,
          color: AppColor.bleuDeFrance,
        ),
        horizontalSpace(10),
        Text(
          title,
          style: AppTextStyles.font30BleuDeFranceBold(context).copyWith(
            fontFamily: FontFamilyHelper.dynaPuffFont,
          ),
        ),
      ],
    );
  }
}
