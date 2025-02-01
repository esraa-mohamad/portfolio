import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/core/helper/spacing.dart';
import 'package:portfolio/core/theme/app_color.dart';
import 'package:portfolio/core/theme/app_text_styles.dart';
import 'package:portfolio/core/theme/font_family_helper.dart';

class HomeImageContent extends StatelessWidget {
  const HomeImageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '\$findLife',
            style: AppTextStyles.font25SilverSandMedium(context).copyWith(
              fontFamily: FontFamilyHelper.dynaPuffFont,
            ),
          ),
          verticalSpace(15),
          animatedText(context: context , title: 'Searching' , subtitle: '.......'),
          animatedText(context: context , title: 'Error : ' , subtitle: 'no life found'),
          animatedText(context: context , title: 'Since' , subtitle: 'you are programmer'),
          animatedText(context: context , title: 'So' , subtitle: ', so you have no life'),
        ],
      ),
    );
  }

  Widget animatedText({required BuildContext context , required String title , required String subtitle}) {
    return Padding(
      padding:  EdgeInsets.only(left: 10.w),
      child: Row(
        children: [
          Icon(
            Icons.arrow_forward_ios_outlined,
            size: 25,
            color: AppColor.silverSand,
          ),
          horizontalSpace(20),
          Text(
            title,
            style: AppTextStyles.font25EucalyptusSemiBold(context)
                .copyWith(fontFamily: FontFamilyHelper.caveatFont),
          ),
          horizontalSpace(8),
          DefaultTextStyle(
            style: AppTextStyles.font25AmericanSilverMedium(context)
                .copyWith(fontFamily: FontFamilyHelper.caveatFont),
            maxLines: 2,
            child: AnimatedTextKit(
              repeatForever: true,
              pause: Duration(seconds: 1),
              animatedTexts: [
                TypewriterAnimatedText(subtitle),
              ],
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
