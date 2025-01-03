import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/app_color.dart';
import 'package:portfolio/core/theme/font_weight_helper.dart';

class AppTextStyles {
  static TextStyle font22BlackBold(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, baseFontSize: 22),
      fontWeight: FontWeightHelper.bold,
      color: AppColor.black,
    );
  }

  static TextStyle font14PhilippineGrayRegular(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, baseFontSize: 14),
      fontWeight: FontWeightHelper.regular,
      color: AppColor.philippineGray,
    );
  }

  static TextStyle font35Black38Bold(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, baseFontSize: 35),
      fontWeight: FontWeightHelper.bold,
      color: AppColor.black.withAlpha(38),
    );
  }

  static TextStyle font20BlackSemiBold(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, baseFontSize: 20),
      fontWeight: FontWeightHelper.semiBold,
      color: AppColor.black,
    );
  }

  static TextStyle font20BrandeisBlueBold(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, baseFontSize: 20),
      fontWeight: FontWeightHelper.bold,
      color: AppColor.brandeisBlue,
    );
  }

  static TextStyle font30BrandeisBlueBold(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, baseFontSize: 30),
      fontWeight: FontWeightHelper.bold,
      color: AppColor.brandeisBlue,
    );
  }

  static TextStyle font40BlackSemiBold(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, baseFontSize: 40),
      fontWeight: FontWeightHelper.semiBold,
      color: AppColor.black,
    );
  }

  static TextStyle font40BrandeisBlueBold(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, baseFontSize: 40),
      fontWeight: FontWeightHelper.bold,
      color: AppColor.brandeisBlue,
    );
  }

  static TextStyle font22DarkCharcoalMedium(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, baseFontSize: 22),
      fontWeight: FontWeightHelper.medium,
      color: AppColor.darkCharcoal,
    );
  }

  static TextStyle font18SilverSandMedium(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, baseFontSize: 18),
      fontWeight: FontWeightHelper.medium,
      color: AppColor.silverSand,
    );
  }

  static TextStyle font20ManateeSemiBold(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, baseFontSize: 20),
      fontWeight: FontWeightHelper.semiBold,
      color: AppColor.manatee,
    );
  }

  static TextStyle font25SilverSandMedium(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, baseFontSize: 25),
      fontWeight: FontWeightHelper.medium,
      color: AppColor.silverSand,
    );
  }

  static TextStyle font25AmericanSilverMedium(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, baseFontSize: 25),
      fontWeight: FontWeightHelper.medium,
      color: AppColor.americanSilver,
    );
  }

  static TextStyle font25EucalyptusSemiBold(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, baseFontSize: 25),
      fontWeight: FontWeightHelper.semiBold,
      color: AppColor.eucalyptus,
    );
  }

  static TextStyle font12LightGreyMedium = TextStyle(
    fontSize: 12,
    fontWeight: FontWeightHelper.medium,
    color: Colors.grey[400],
  );

  static TextStyle font30BleuDeFranceBold(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, baseFontSize: 30),
      fontWeight: FontWeightHelper.bold,
      color: AppColor.bleuDeFrance,
    );
  }

  static TextStyle font16PhilippineGrayMedium(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, baseFontSize: 16),
      fontWeight: FontWeightHelper.medium,
      color: AppColor.philippineGray,
    );
  }

  static TextStyle font14GreyMedium = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeightHelper.medium,
    color: Colors.grey,
  );

  static TextStyle font16BrandeisBlueMedium(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, baseFontSize: 16),
      fontWeight: FontWeightHelper.medium,
      color: AppColor.brandeisBlue,
    );
  }

  static TextStyle font16WhiteSemiBold(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, baseFontSize: 16),
      fontWeight: FontWeightHelper.semiBold,
      color: AppColor.white,
    );
  }

  static TextStyle font25BlackBold(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, baseFontSize: 25),
      fontWeight: FontWeightHelper.bold,
      color: AppColor.black,
    );
  }

  static TextStyle font20BlackBold(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, baseFontSize: 20),
      fontWeight: FontWeightHelper.bold,
      color: AppColor.black,
    );
  }

  static TextStyle font18BleuDeFranceSemiBold(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, baseFontSize: 18),
      fontWeight: FontWeightHelper.semiBold,
      color: AppColor.bleuDeFrance,
    );
  }

  static TextStyle font18BlackSemiBold(context){
    return  TextStyle(
      fontSize: getResponsiveFontSize(context, baseFontSize: 18),
      fontWeight: FontWeightHelper.semiBold,
      color: Colors.black,
    );
  }

  static TextStyle font12WhiteSemiBold(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, baseFontSize: 12),
      fontWeight: FontWeightHelper.semiBold,
      color: Colors.white,
    );
  }

  static TextStyle font50BlueBold(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, baseFontSize: 50),
      fontWeight: FontWeightHelper.bold,
      color: AppColor.brandeisBlue,
    );
  }

  static TextStyle font18LightBlueMedium (context){
    return  TextStyle(
      fontSize: getResponsiveFontSize(context, baseFontSize: 18),
      fontWeight: FontWeightHelper.medium,
      color: AppColor.bleuDeFrance,
    );
  }
  static TextStyle font20LightBlueMedium(context){
    return  TextStyle(
      fontSize: getResponsiveFontSize(context, baseFontSize: 20),
      fontWeight: FontWeightHelper.medium,
      color: AppColor.bleuDeFrance,
    );
  }

  static TextStyle font50BlackBold(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, baseFontSize: 50),
      fontWeight: FontWeightHelper.bold,
      color: Colors.black,
    );
  }

  static TextStyle font30BlackBold(context){
    return  TextStyle(
      fontSize: getResponsiveFontSize(context, baseFontSize: 30),
      fontWeight: FontWeightHelper.bold,
      color: Colors.black,
    );
  }
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

double getResponsiveFontSize(BuildContext context,
    {required double baseFontSize}) {
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
  double width = MediaQuery.sizeOf(context).width;
  if (width < 700) {
    return width / 550;
  } else if (width < 1300) {
    return width / 1000;
  } else {
    return width / 1200;
  }
}
