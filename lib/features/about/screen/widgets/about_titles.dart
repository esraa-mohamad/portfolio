import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/app_color.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/theme/font_family_helper.dart';

class AboutTitles extends StatelessWidget {
  const AboutTitles({super.key, required this.title});

  final String title ;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 10.w,
          height: 2.h,
          color: AppColor.lightBlue,
        ),
        Text(
          '  $title',
          style: AppTextStyles.font8LightBlueBold.copyWith(
            fontFamily: FontFamilyHelper.dynaPuffFont,
          ),
        ),
      ],
    );
  }
}
