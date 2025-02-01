import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/app_color.dart';

import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/theme/font_family_helper.dart';

class ContactMessage extends StatelessWidget {
  const ContactMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Text(
      'Let\'s Work Together\nI\'m available for freelancing' ,
      textAlign: TextAlign.center,
      style: AppTextStyles.font40WhiteBold(context).copyWith(
          fontFamily: FontFamilyHelper.caveatFont   ,
        color: AppColor.brandeisBlue,
      ),
    );
  }
}
