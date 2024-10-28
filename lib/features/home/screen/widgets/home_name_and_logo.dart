import 'package:flutter/material.dart';
import 'package:portfolio/core/helper/app_images.dart';
import 'package:portfolio/core/theme/app_text_styles.dart';
import 'package:portfolio/core/theme/font_family_helper.dart';

class HomeNameAndLogo extends StatelessWidget {
  const HomeNameAndLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Text(
              'Esraa Mohamed',
              style: AppTextStyles.font6BlackBold
                  .copyWith(fontFamily: FontFamilyHelper.dynaPuffFont),
            ),
            Text(
              'Flutter Developer',
              style: AppTextStyles.font3GreyRegular
                  .copyWith(fontFamily: FontFamilyHelper.poppinsFont),
            ),
          ],
        ),
        Text(
          '|',
          style: AppTextStyles.font20BlackBold,
        ),
        Image.asset(
          AppImages.womanCodeLogo,
          height: 150,
          width: 100,
        )
      ],
    );
  }
}
