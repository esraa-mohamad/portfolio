import 'package:flutter/material.dart';
import 'package:portfolio/core/helper/app_functions.dart';
import 'package:portfolio/core/theme/app_text_styles.dart';
import 'package:portfolio/core/theme/font_family_helper.dart';

import '../../../../core/widgets/icons_link.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Contact Info' ,
          style: AppTextStyles.font40WhiteBold.copyWith(
            fontFamily: FontFamilyHelper.caveatFont
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height *0.01,
        ),
        Row(
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
        ),
        Row(
          children: [
            const Icon(
              Icons.alternate_email ,
              size: 20,
              color: Colors.black,
            ),
            GestureDetector(
              onTap: (){
                AppFunctions.launchEmail(email: "esoodawood186@gmail.com");
              },
              child: Text(
                  ' esoodawood186@gmail.com',
                style: AppTextStyles.font18BlackSemiBold(context).copyWith(
                  fontFamily: FontFamilyHelper.poppinsFont,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height *0.02,
        ),
        const IconsLink()
      ],
    );
  }
}
