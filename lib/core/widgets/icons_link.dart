import 'package:flutter/material.dart';
import 'package:portfolio/core/helper/app_functions.dart';
import 'package:portfolio/core/helper/app_images.dart';
import 'package:portfolio/core/models/icon_link_model.dart';

class IconsLink extends StatefulWidget {
  const IconsLink({super.key});

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
    return Padding(
      padding: const EdgeInsets.only(
        right: 15,
      ),
      child: GestureDetector(
        onTap: ontTap,
        child: Image.asset(
          iconPath,
          width: 20,
          height: 20,
        ),
      ),
    );
  }
}
