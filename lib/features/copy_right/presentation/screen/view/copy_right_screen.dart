import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/core/theme/app_color.dart';
import 'package:portfolio/features/copy_right/presentation/screen/widgets/copy_right_text.dart';

class CopyRightScreen extends StatelessWidget {
  const CopyRightScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        vertical: 20.h  ,
      ),
      color: AppColor.bleuDeFrance,
      child: Center(
        child: CopyRightText(),
      ),
    );
  }
}
