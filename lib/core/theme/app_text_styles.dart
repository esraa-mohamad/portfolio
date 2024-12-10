import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/core/theme/app_color.dart';
import 'package:portfolio/core/theme/font_weight_helper.dart';

class AppTextStyles {
  static TextStyle font22BlackBold(BuildContext context)  {
    return TextStyle(
      fontSize: getResponsiveFontSize(context , baseFontSize: 22),
      fontWeight: FontWeightHelper.bold,
      color: Colors.black,
    );
  }
  static TextStyle font10GreyRegular(BuildContext context){
    return  TextStyle(
      fontSize: getResponsiveFontSize(context , baseFontSize: 10),
      fontWeight: FontWeightHelper.regular,
      color: Colors.grey,
    );
  }
  static TextStyle font35LightBlackBold(BuildContext context){
    return TextStyle(
      fontSize: getResponsiveFontSize(context , baseFontSize: 35),
      fontWeight: FontWeightHelper.bold,
      color: Colors.black38,
    );
  }


  static TextStyle font20BlackSemiBold(BuildContext context){
    return TextStyle(
      fontSize: getResponsiveFontSize(context , baseFontSize: 20),
      fontWeight: FontWeightHelper.semiBold,
      color: Colors.black,
    );
  }
  static TextStyle font20BlueBold(context){
    return  TextStyle(
      fontSize: getResponsiveFontSize(context , baseFontSize: 20),
      fontWeight: FontWeightHelper.bold,
      color: AppColor.mainBlue,
    );
  }
  static TextStyle font30BlueBold = const TextStyle(
    fontSize: 30,
    fontWeight: FontWeightHelper.bold,
    color: AppColor.mainBlue,
  );

  static TextStyle font40BlackSemiBold = const TextStyle(
    fontSize: 40,
    fontWeight: FontWeightHelper.semiBold,
    color: Colors.black,
  );
  static TextStyle font40BlueBold = const TextStyle(
    fontSize: 40,
    fontWeight: FontWeightHelper.bold,
    color: AppColor.mainBlue,
  );
  static TextStyle font18GreyMedium = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeightHelper.medium,
    color: Colors.grey,
  );
  static TextStyle font14LightGreyMedium = TextStyle(
    fontSize: 14,
    fontWeight: FontWeightHelper.medium,
    color: Colors.grey[400],
  );
  static TextStyle font12LightGreyMedium = TextStyle(
    fontSize: 12,
    fontWeight: FontWeightHelper.medium,
    color: Colors.grey[400],
  );

  static TextStyle font30LightBlueBold = const TextStyle(
    fontSize: 30,
    fontWeight: FontWeightHelper.bold,
    color: AppColor.lightBlue,
  );

  static TextStyle font16GreyMedium = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeightHelper.medium,
    color: Colors.grey,
  );
  static TextStyle font14GreyMedium = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeightHelper.medium,
    color: Colors.grey,
  );
  static TextStyle font16BlueMedium = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeightHelper.medium,
    color: AppColor.mainBlue,
  );
  static TextStyle font16WhiteSemiBold = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeightHelper.semiBold,
    color: Colors.white,
  );
  static TextStyle font25BlackBold = const TextStyle(
    fontSize: 25,
    fontWeight: FontWeightHelper.bold,
    color: Colors.black,
  );
  static TextStyle font20BlackBold = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeightHelper.bold,
    color: Colors.black,
  );
  static TextStyle font18BlackSemiBold = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeightHelper.semiBold,
    color: Colors.black,
  );

  static TextStyle font12WhiteSemiBold = const TextStyle(
    fontSize: 12,
    fontWeight: FontWeightHelper.semiBold,
    color: Colors.white,
  );
  static TextStyle font20WhiteBold = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeightHelper.bold,
    color: Colors.white,
  );
  static TextStyle font50BlueBold = const TextStyle(
    fontSize: 50,
    fontWeight: FontWeightHelper.bold,
    color: AppColor.mainBlue,
  );

  static TextStyle font18LightBlueMedium = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeightHelper.medium,
    color: AppColor.lightBlue,
  );
  static TextStyle font14LightBlueMedium = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeightHelper.medium,
    color: AppColor.lightBlue,
  );
  static TextStyle font50BlackBold = const TextStyle(
    fontSize: 50,
    fontWeight: FontWeightHelper.bold,
    color: Colors.black,
  );

  static TextStyle font30BlackBold = const TextStyle(
    fontSize: 30,
    fontWeight: FontWeightHelper.bold,
    color: Colors.black,
  );
  static TextStyle font40WhiteBold = const TextStyle(
    fontSize: 40,
    fontWeight: FontWeightHelper.bold,
    color: Colors.white,
  );

  static TextStyle font30WhiteBold = const TextStyle(
    fontSize: 30,
    fontWeight: FontWeightHelper.bold,
    color: Colors.white,
  );
}

double getResponsiveFontSize(BuildContext context ,{required double baseFontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = baseFontSize * scaleFactor;
  double lowerFontSize = baseFontSize * 0.8;
  double upperFontSize = baseFontSize * 1.2;
  return responsiveFontSize.clamp(lowerFontSize, upperFontSize);
}

double getScaleFactor(BuildContext context) {
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var  devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  //double width = physicalWidth / devicePixelRatio;
  double  width = MediaQuery.sizeOf(context).width;
  if (width < 800) {
    return width / 550;
  } else if (width < 1200) {
    return width / 1000;
  } else {
    return width / 1500;
  }
}

