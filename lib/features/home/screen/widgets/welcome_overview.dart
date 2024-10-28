import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/core/theme/app_text_styles.dart';
import 'package:portfolio/core/theme/font_family_helper.dart';

class WelcomeOverview extends StatelessWidget {
  const WelcomeOverview({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
            text: TextSpan(
              text: 'Hi , I\'m ',
              style: AppTextStyles.font10BlackSemiBold.copyWith(fontFamily: FontFamilyHelper.robotoFont),
              children: [
                TextSpan(
                  text: 'Esraa!' ,
                  style: AppTextStyles.font10BlueBold.copyWith(fontFamily: FontFamilyHelper.robotoFont) ,
                ),
                TextSpan(
                  text: '\nFlutter Developer' ,
                  style: AppTextStyles.font10BlackSemiBold.copyWith(fontFamily: FontFamilyHelper.robotoFont) ,
                ),
              ]
            ),
        ),
         SizedBox(
          height: 10.h,
        ),
        Text(
          'Building responsive mobile application \nfrom 2 years experience in dart and flutter.' ,
          style: AppTextStyles.font6GreyMedium.copyWith(fontFamily: FontFamilyHelper.poppinsFont),
        ),
        Text(
          'I\'m here for any new challenge \nI\'m here to write new code' ,
          style: AppTextStyles.font4LightGreyRegular.copyWith(fontFamily: FontFamilyHelper.dynaPuffFont),
        ),
      ],
    );
  }
}
