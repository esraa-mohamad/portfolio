import 'package:flutter/material.dart';
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
              style: AppTextStyles.font40BlackSemiBold(context).copyWith(fontFamily: FontFamilyHelper.robotoFont),
              children: [
                TextSpan(
                  text: 'Esraa!' ,
                  style: AppTextStyles.font40BrandeisBlueBold(context).copyWith(fontFamily: FontFamilyHelper.robotoFont) ,
                ),
                TextSpan(
                  text: '\nFlutter Developer' ,
                  style: AppTextStyles.font40BlackSemiBold(context).copyWith(fontFamily: FontFamilyHelper.robotoFont) ,
                ),
              ]
            ),
        ),
         const SizedBox(
          height: 10,
        ),
        Text(
          'Building responsive mobile application from 2 years experience in dart and flutter.' ,
          maxLines: 5,
          style: AppTextStyles.font22DarkCharcoalMedium(context).copyWith(fontFamily: FontFamilyHelper.poppinsFont),
        ),
        Text(
          'I\'m here for any new challenge \nI\'m here to write new code' ,
          style: AppTextStyles.font18SilverSandMedium(context).copyWith(fontFamily: FontFamilyHelper.dynaPuffFont),
        ),
      ],
    );
  }
}
