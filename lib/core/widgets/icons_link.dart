import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../helper/app_functions.dart';
import '../helper/app_images.dart';
import '../models/icon_link_model.dart';

class IconsLink extends StatefulWidget {
  const IconsLink({super.key, this.mainAxisAlignment});

  final MainAxisAlignment? mainAxisAlignment;
  @override
  State<IconsLink> createState() => _IconsLinkState();
}

class _IconsLinkState extends State<IconsLink> {
  List<IconLinkModel> profiles = [
    IconLinkModel(iconPath: AppImages.githubIcon, urlPath: 'https://github.com/esraa-mohamad',),
    IconLinkModel(iconPath: AppImages.linkedinIcon, urlPath: 'https://www.linkedin.com/in/esraa-mohamed-36759b231/',),
    IconLinkModel(iconPath: AppImages.facebookIcon, urlPath: 'https://www.facebook.com/profile.php?id=100017357289011',),
    IconLinkModel(iconPath: AppImages.whatsappIcon, urlPath: 'https://api.whatsapp.com/qr/QKKOOGJZDLAKI1?autoload=1&app_absent=0',),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:widget.mainAxisAlignment ?? MainAxisAlignment.start ,
      children: List.generate(
        profiles.length,
        (index) => iconLink(
          iconPath: profiles[index].iconPath,
          ontTap: (){
            AppFunctions.launchLinks(profiles[index].urlPath);
          },
        ),
      ),
    );
  }

  Widget iconLink({
    required String iconPath,
    required void Function() ontTap,
  }) {
    double width = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: const EdgeInsets.only(
        right: 15,
      ),
      child: GestureDetector(
        onTap: ontTap,
        child: Image.asset(
          iconPath,
          width: width < 800 ? 20.w :30.w,
          height:width < 800 ? 20.h : 30.h,
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
}
