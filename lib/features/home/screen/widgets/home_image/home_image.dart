import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/core/theme/app_color.dart';
import 'package:portfolio/features/home/screen/widgets/home_image/home_image_content.dart';
import 'package:portfolio/features/home/screen/widgets/home_image/home_image_header.dart';

class HomeImage extends StatelessWidget {
  const HomeImage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Container(
      width: width < 800 ? 500.w :
      MediaQuery.sizeOf(context).width *0.4,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15).r,
        ),
        color: AppColor.eerieBlack ,
      ),
      child: Column(
        children: [
         HomeImageHeader(),
          HomeImageContent(),
        ],
      ),
    );
  }
}
