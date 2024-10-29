import 'package:flutter/material.dart';

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
          width: 80,
          height: 2,
          color: AppColor.lightBlue,
        ),
        Text(
          '  $title',
          style: AppTextStyles.font30LightBlueBold.copyWith(
            fontFamily: FontFamilyHelper.dynaPuffFont,
          ),
        ),
      ],
    );
  }
}
