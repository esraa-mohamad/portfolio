import 'package:flutter/material.dart';
import 'package:portfolio/core/helper/app_images.dart';
import 'package:portfolio/core/theme/app_text_styles.dart';
import 'package:portfolio/core/theme/font_family_helper.dart';

class PortfolioNameAndLogo extends StatelessWidget {
  const PortfolioNameAndLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Esraa Mohamed',
              style: AppTextStyles.font22BlackBold(context)
                  .copyWith(fontFamily: FontFamilyHelper.dynaPuffFont),
            ),
            Text(
              'Flutter Developer',
              style: AppTextStyles.font10GreyRegular(context)
                  .copyWith(fontFamily: FontFamilyHelper.poppinsFont),
            ),
          ],
        ),
        Text(
          '  |',
          style: AppTextStyles.font35LightBlackBold(context),
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Image.asset(
            AppImages.womanCodeLogo,
            height: 120,
            width: 120,
          ),
        )
      ],
    );
  }
}
