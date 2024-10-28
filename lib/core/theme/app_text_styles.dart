
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/core/theme/app_color.dart';
import 'package:portfolio/core/theme/font_weight_helper.dart';

class AppTextStyles{

  static  TextStyle font6BlackBold = TextStyle(
    fontSize: 6.sp ,
    fontWeight: FontWeightHelper.bold ,
    color: Colors.black ,
  );
  static  TextStyle font3GreyRegular = TextStyle(
    fontSize: 3.sp ,
    fontWeight: FontWeightHelper.regular ,
    color: Colors.grey ,
  );
  static  TextStyle font20BlackBold = TextStyle(
    fontSize: 12.sp ,
    fontWeight: FontWeightHelper.bold ,
    color: Colors.black ,
  );

  static  TextStyle font4BlackSemiBold = TextStyle(
    fontSize: 4.sp ,
    fontWeight: FontWeightHelper.semiBold ,
    color: Colors.black ,
  );
  static  TextStyle font6BlueBold = TextStyle(
    fontSize: 6.sp ,
    fontWeight: FontWeightHelper.bold ,
    color: AppColor.mainBlue ,
  );

  static  TextStyle font10BlackSemiBold = TextStyle(
    fontSize: 10.sp ,
    fontWeight: FontWeightHelper.semiBold ,
    color: Colors.black ,
  );
  static  TextStyle font10BlueBold = TextStyle(
    fontSize: 10.sp ,
    fontWeight: FontWeightHelper.bold ,
    color: AppColor.mainBlue ,
  );
  static  TextStyle font6GreyMedium = TextStyle(
    fontSize: 6.sp ,
    fontWeight: FontWeightHelper.medium ,
    color: Colors.grey ,
  );
  static  TextStyle font4LightGreyRegular = TextStyle(
    fontSize: 4.sp ,
    fontWeight: FontWeightHelper.regular ,
    color: Colors.grey[300] ,
  );
}