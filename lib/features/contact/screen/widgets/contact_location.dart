import 'package:flutter/material.dart';

import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/theme/font_family_helper.dart';

class ContactLocation extends StatelessWidget {
  const ContactLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.location_on ,
          size: 20,
          color: Colors.black,
        ),
        Text(
          ' Egypt , Cairo',
          style: AppTextStyles.font18BlackSemiBold(context).copyWith(
            fontFamily: FontFamilyHelper.poppinsFont,
          ),
        ),
      ],
    );
  }
}
