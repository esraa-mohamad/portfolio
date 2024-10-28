import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/core/theme/app_text_styles.dart';
import 'package:portfolio/core/theme/font_family_helper.dart';

class HomeTabBar extends StatefulWidget {
  const HomeTabBar({super.key});

  @override
  State<HomeTabBar> createState() => _HomeTabBarState();
}

class _HomeTabBarState extends State<HomeTabBar> {
  final List<String> tabBarItem = [
    'Home',
    'About',
    'Projects',
    'Contact'
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(tabBarItem.length, (index)=>tabBarText(
        title: tabBarItem[index],
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        textStyle: selectedIndex == index
            ? AppTextStyles.font6BlueBold
            .copyWith(fontFamily: FontFamilyHelper.robotoFont)
            : AppTextStyles.font4BlackSemiBold
            .copyWith(fontFamily: FontFamilyHelper.robotoFont),
      )
      ),
    );
  }

  Widget tabBarText(
      {required String title,
      TextStyle? textStyle,
      required void Function() onTap}) {
    return Padding(
      padding:  EdgeInsets.only(right: 12.r),
      child: GestureDetector(
        onTap: onTap,
        child: Text(
          title,
          style: textStyle ??
              AppTextStyles.font4BlackSemiBold
                  .copyWith(fontFamily: FontFamilyHelper.poppinsFont),
        ),
      ),
    );
  }
}
