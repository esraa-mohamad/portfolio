import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/core/helper/spacing.dart';
import 'package:portfolio/core/theme/app_color.dart';
import 'package:portfolio/core/theme/app_text_styles.dart';
import 'package:portfolio/core/theme/font_family_helper.dart';

class HomeImageHeader extends StatelessWidget {
  HomeImageHeader({super.key});

  final List<Color> colors = [
    AppColor.sunsetOrange,
    AppColor.ripeMango,
    AppColor.limeGreen
  ];

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: 20.w ,
        vertical: 15.h ,
      ),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15).r ,
            topRight: Radius.circular(15).r ,
          )
        ),
        color: AppColor.raisinBlack,
      ),
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: List.generate(colors.length, (index) {
              return Padding(
                padding: EdgeInsets.only(right: index == 2 ? 0 : 8.w),
                child: circle(colors[index]),
              );
            }),
          ),
          Text(
            'life.dart',
            textAlign: TextAlign.center,
            style: AppTextStyles.font20ManateeSemiBold(context).copyWith(
              fontFamily: FontFamilyHelper.poppinsFont,
            ),
          ),
         horizontalSpace(20),
        ],
      ),
    );

  }

  Widget circle(Color? color) {
    return Container(
      width: 15.w,
      height: 15.h,
      decoration: BoxDecoration(shape: BoxShape.circle, color: color),
    );
  }
}
