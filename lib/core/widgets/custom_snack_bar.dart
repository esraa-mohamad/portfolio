import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/core/theme/app_color.dart';

import '../theme/app_text_styles.dart';

void showSnackBar({required BuildContext context , required String message , Color? backgroundColor}){
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      duration: const Duration(seconds: 5),
        padding:  EdgeInsets.symmetric(horizontal: 8.w ,vertical: 4),
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20) ,
        ),
        backgroundColor:AppColor.mainBlue,
        content: Text(message ,style: AppTextStyles.font6BlackBold,)
    ),
  );
}