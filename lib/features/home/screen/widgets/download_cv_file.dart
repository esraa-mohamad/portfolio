import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/core/helper/app_functions.dart';
import 'package:portfolio/core/theme/app_color.dart';
import 'package:portfolio/core/theme/app_text_styles.dart';
import 'package:portfolio/core/theme/font_family_helper.dart';

class DownloadCvFile extends StatelessWidget {
  const DownloadCvFile({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        AppFunctions.downloadFile(context);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: AppColor.mainBlue, width: 2)),
        child: Center(
          child: Text(
            'Download CV file',
            style: AppTextStyles.font6BlackBold.copyWith(
              fontFamily: FontFamilyHelper.robotoFont,
            ),
          ),
        ),
      ),
    );
  }
}
