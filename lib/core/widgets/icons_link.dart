import 'package:flutter/material.dart';
import 'package:portfolio/core/helper/app_functions.dart';
import 'package:portfolio/core/helper/app_images.dart';

class IconsLink extends StatefulWidget {
  const IconsLink({super.key});

  @override
  State<IconsLink> createState() => _IconsLinkState();
}

class _IconsLinkState extends State<IconsLink> {
  List<Map> profiles = [
    {
      'icon': AppImages.githubIcon,
      'url': 'https://github.com/esraa-mohamad',
    },
    {
      'icon': AppImages.linkedinIcon,
      'url':'https://www.linkedin.com/in/esraa-mohamed-36759b231/',
    },
    {
      'icon': AppImages.facebookIcon,
      'url': 'https://www.facebook.com/profile.php?id=100017357289011',
    },
    {
      'icon': AppImages.whatsappIcon,
      'url': 'https://api.whatsapp.com/qr/QKKOOGJZDLAKI1?autoload=1&app_absent=0',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        profiles.length,
        (index) => iconLink(
          iconPath: profiles[index]['icon'],
          ontTap: (){
            AppFunctions.launchLinks(profiles[index]['url']);
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
          width: 30,
          height: 30,
        ),
      ),
    );
  }
}
