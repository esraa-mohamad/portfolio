import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/app_text_styles.dart';
import 'package:portfolio/core/theme/font_family_helper.dart';


class PortfolioTabBar extends StatelessWidget {
  PortfolioTabBar({super.key, required this.selectedIndex, required this.onTap});

  final List<String> tabBarItem = [
    'Home',
    'About',
    'Projects',
    'Contact'
  ];

 final  int selectedIndex ;
final void Function(int) onTap;



  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(tabBarItem.length, (index)=>tabBarText(
        title: tabBarItem[index],
        onTap:()=> onTap(index),
        textStyle: selectedIndex == index
            ? AppTextStyles.font20BlueBold
            .copyWith(fontFamily: FontFamilyHelper.robotoFont)
            : AppTextStyles.font20BlackSemiBold
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
      padding:  const EdgeInsets.only(right: 20),
      child: GestureDetector(
        onTap: onTap,
        child: Text(
          title,
          style: textStyle ??
              AppTextStyles.font20BlackSemiBold
                  .copyWith(fontFamily: FontFamilyHelper.poppinsFont),
        ),
      ),
    );
  }
}
