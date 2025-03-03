import 'package:flutter/material.dart';
import 'package:portfolio/core/helper/spacing.dart';
import 'package:portfolio/core/theme/app_text_styles.dart';
import 'package:portfolio/core/theme/font_family_helper.dart';

class Quotes extends StatelessWidget {
  const Quotes({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "\"I’m not a great programmer; I’m just a good programmer with great habits.\"",
            textAlign: TextAlign.center,
            style: AppTextStyles.font30BrandeisBlueBold(context).copyWith(
              fontFamily: FontFamilyHelper.caveatFont,
            ),
          ),
          verticalSpace(15),
          Align(
            alignment: AlignmentDirectional.centerEnd,
            child: Text(
              '___Kent Beck___',
              style: AppTextStyles.font25BlackBold(context).copyWith(
                fontFamily: FontFamilyHelper.caveatFont,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
