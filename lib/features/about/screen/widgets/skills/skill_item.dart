import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/core/helper/spacing.dart';
import 'package:portfolio/core/theme/app_color.dart';

import '../../../../../core/theme/app_text_styles.dart';
import '../../../../../core/theme/font_family_helper.dart';

class SkillItem extends StatelessWidget {
  const SkillItem({super.key, required this.skill, this.image});

  final String? image;

  final String skill;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 12.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15).r,
        color: AppColor.white,
        boxShadow: [
          BoxShadow(
            color: AppColor.bleuDeFrance.withAlpha(50),
            blurRadius: 5,
            offset: Offset(5, 5),
          ),
        ],
      ),
      child: Row(
        children: [
          image!.isEmpty
              ? SizedBox(
                  width: 25.w,
                )
              : SvgPicture.asset(
                  image!,
                  width: 25.w,
                  height: 25.h,
                ),
          horizontalSpace(20),
          Flexible(
            child: Text(
              skill,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: AppTextStyles.font18BleuDeFranceSemiBold(context).copyWith(
                  fontFamily: FontFamilyHelper.poppinsFont,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
