import 'package:flutter/material.dart';
import 'package:portfolio/core/helper/spacing.dart';
import 'package:portfolio/core/theme/app_text_styles.dart';
import 'package:portfolio/core/theme/font_family_helper.dart';
import 'package:portfolio/core/theme/font_weight_helper.dart';

class CopyRightText extends StatelessWidget {
  const CopyRightText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.copyright,
          color: Colors.white,
          size: 25,
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: ' 2024 '  ,
                style: AppTextStyles.font22WhiteSemiBold(context).copyWith(
                  fontFamily: FontFamilyHelper.dynaPuffFont
                )
              ),
              TextSpan(
                  text: 'Esraa, '  ,
                  style: AppTextStyles.font22WhiteSemiBold(context).copyWith(
                      fontFamily: FontFamilyHelper.dynaPuffFont ,
                    fontWeight: FontWeightHelper.bold
                  ),
              ),
              TextSpan(
                  text: 'Made by Flutter 🤍'  ,
                  style: AppTextStyles.font22WhiteSemiBold(context).copyWith(
                      fontFamily: FontFamilyHelper.dynaPuffFont
                  )
              ),
            ],
          ),
        ),
      ],
    );
  }
}
