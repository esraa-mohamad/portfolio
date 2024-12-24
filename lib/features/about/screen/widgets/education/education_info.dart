import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/core/helper/spacing.dart';

import '../../../../../core/theme/app_color.dart';
import '../../../../../core/theme/app_text_styles.dart';
import '../../../../../core/theme/font_family_helper.dart';

class EducationInfo extends StatelessWidget {
  const EducationInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
       EdgeInsets.symmetric(vertical: 12.w, horizontal: 18.h),
      decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius:  BorderRadius.circular(15).r,
          boxShadow: const [
            BoxShadow(
              color: AppColor.bleuDeFrance,
              blurRadius: 5,
            ),
          ],),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              'Bachelors of Computers and Artificial Intelligence',
              maxLines: 2,
              textAlign: TextAlign.center,
              style: AppTextStyles.font20BlackBold(context)
                  .copyWith(fontFamily: FontFamilyHelper.robotoFont),
            ),
          ),
          verticalSpace(20),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'University :- ',
                  style: AppTextStyles.font16PhilippineGrayMedium(context).copyWith(fontFamily: FontFamilyHelper.poppinsFont,),
                ),
                TextSpan(
                  text: 'Benha',
                  style: AppTextStyles.font16BrandeisBlueMedium(context).copyWith(fontFamily: FontFamilyHelper.poppinsFont,),
                ),
              ],
            ),
          ),
          verticalSpace(15),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Graduation :- ',
                  style: AppTextStyles.font16PhilippineGrayMedium(context).copyWith(fontFamily: FontFamilyHelper.poppinsFont,),
                ),
                TextSpan(
                  text: '10/2020 : 7/2024',
                  style: AppTextStyles.font16BrandeisBlueMedium(context).copyWith(fontFamily: FontFamilyHelper.poppinsFont,),
                ),
              ],
            ),
          ),
          verticalSpace(15),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Department :- ',
                  style: AppTextStyles.font16PhilippineGrayMedium(context).copyWith(fontFamily: FontFamilyHelper.poppinsFont,),
                ),
                TextSpan(
                  text: 'Computer Science',
                  style: AppTextStyles.font16BrandeisBlueMedium(context).copyWith(fontFamily: FontFamilyHelper.poppinsFont,),
                ),
              ],
            ),
          ),
          verticalSpace(15),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'GPA :- ',
                  style:  AppTextStyles.font16PhilippineGrayMedium(context).copyWith(fontFamily: FontFamilyHelper.poppinsFont,),
                ),
                TextSpan(
                  text: '3.5',
                  style: AppTextStyles.font16BrandeisBlueMedium(context).copyWith(fontFamily: FontFamilyHelper.poppinsFont,),
                ),
              ],
            ),
          ),
          verticalSpace(15),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Graduation Project grade :- ',
                  style:  AppTextStyles.font16PhilippineGrayMedium(context).copyWith(fontFamily: FontFamilyHelper.poppinsFont,),
                ),
                TextSpan(
                  text: '3.5',
                  style: AppTextStyles.font16BrandeisBlueMedium(context).copyWith(fontFamily: FontFamilyHelper.poppinsFont,),
                ),
              ],
            ),
          ),
          verticalSpace(15),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Graduation Project title :- ',
                  style:  AppTextStyles.font16PhilippineGrayMedium(context).copyWith(fontFamily: FontFamilyHelper.poppinsFont,),
                ),
                TextSpan(
                  text: 'Double Helix Detective System(DNA Testing System)',
                  style: AppTextStyles.font16BrandeisBlueMedium(context).copyWith(fontFamily: FontFamilyHelper.poppinsFont,),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
