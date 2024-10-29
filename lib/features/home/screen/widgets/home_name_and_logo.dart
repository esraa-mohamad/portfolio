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
              style: AppTextStyles.font22BlackBold
                  .copyWith(fontFamily: FontFamilyHelper.dynaPuffFont),
            ),
            Text(
              'Flutter Developer',
              style: AppTextStyles.font10GreyRegular
                  .copyWith(fontFamily: FontFamilyHelper.poppinsFont),
            ),
          ],
        ),
        Text(
          '  |',
          style: AppTextStyles.font35BlackBold,
        ),
        Image.asset(
          AppImages.womanCodeLogo,
          height: MediaQuery.of(context).size.height /7,
          width: MediaQuery.of(context).size.width /15,
        )
      ],
    );
  }
}
