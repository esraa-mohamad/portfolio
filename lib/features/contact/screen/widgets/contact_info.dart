import 'package:flutter/material.dart';
import 'package:portfolio/core/helper/spacing.dart';
import 'package:portfolio/core/theme/app_text_styles.dart';
import 'package:portfolio/core/theme/font_family_helper.dart';
import 'package:portfolio/features/contact/screen/widgets/contact_email.dart';
import 'package:portfolio/features/contact/screen/widgets/contact_location.dart';

import '../../../../core/theme/app_color.dart';
import '../../../../core/widgets/icons_link.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Contact Info',
          style: AppTextStyles.font40WhiteBold(context).copyWith(
            fontFamily: FontFamilyHelper.caveatFont,
            color: AppColor.brandeisBlue,
          ),
        ),
        verticalSpace(20),
        ContactLocation(),
        ContactEmail(),
        verticalSpace(20),
        const IconsLink(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ],
    );
  }
}
