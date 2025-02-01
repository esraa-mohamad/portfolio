import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/core/theme/app_color.dart';
import 'package:portfolio/core/widgets/adaptive_layout.dart';
import 'package:portfolio/features/contact/screen/widgets/contact_desktop.dart';
import 'package:portfolio/features/contact/screen/widgets/contact_mobile.dart';

class ContactPartScreen extends StatelessWidget {
  const ContactPartScreen({super.key, required this.globalKey});

  final GlobalKey globalKey;

  @override
  Widget build(BuildContext context) {
    var width  =  MediaQuery.sizeOf(context).width;
    return Container(
      key: globalKey,
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        vertical:  width<700 ? 50.h : 20.h,
        horizontal:20.w ,
      ),
      color: AppColor.lightGray,
      child: AdaptiveLayout(
        mobileLayout: (context)=>  ContactMobile(),
        tabletLayout: (context)=>  ContactDesktop(),
        desktopLayout: (context)=>  ContactDesktop(),
      ),
    );
  }
}
