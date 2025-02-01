import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/core/helper/app_functions.dart';
import 'package:portfolio/core/theme/app_color.dart';
import 'package:portfolio/core/theme/app_text_styles.dart';
import 'package:portfolio/core/theme/font_family_helper.dart';

class DownloadCvFile extends StatefulWidget {
  const DownloadCvFile({super.key});

  @override
  State<DownloadCvFile> createState() => _DownloadCvFileState();
}

class _DownloadCvFileState extends State<DownloadCvFile> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        AppFunctions.downloadFile(context);
      },
      onHover: (val) {
        setState(() {
          isHover =  val;
        });
      },
      hoverColor: Colors.transparent,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12).r,
          color: isHover ? AppColor.brandeisBlue   : AppColor.white ,
          border:
          Border.all(
            color: isHover ? Colors.transparent : AppColor.brandeisBlue,
            width: 2,
          ),
        ),
        child: Center(
          child: Text(
            'Download CV file',
            style: AppTextStyles.font22BlackBold(context).copyWith(
              fontFamily: FontFamilyHelper.robotoFont,
              color: isHover ? AppColor.white  : AppColor.black
            ),
          ),
        ),
      ),
    );
  }
}
