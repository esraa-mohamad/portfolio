import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/core/theme/app_text_styles.dart';
import 'package:portfolio/core/theme/font_family_helper.dart';

class PortfolioTabBar extends StatefulWidget {
  const PortfolioTabBar(
      {super.key, required this.selectedIndex, required this.onTap});

  final int selectedIndex;

  final void Function(int) onTap;

  @override
  State<PortfolioTabBar> createState() => _PortfolioTabBarState();
}

class _PortfolioTabBarState extends State<PortfolioTabBar> {
  final List<String> tabBarItem = ['Home', 'About', 'Projects', 'Contact'];
  final Set<int> hoverIndices = {};

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
          tabBarItem.length,
          (index) => Padding(
                padding: EdgeInsets.only(
                    right: index == tabBarItem.length - 1 ? 0 : 15.w),
                child: tabBarText(
                    context: context,
                    title: tabBarItem[index],
                    onTap: () => widget.onTap(index),
                    onHover: (val) {
                      setState(() {
                        if (val) {
                          hoverIndices.add(index);
                        } else {
                          hoverIndices.remove(index);
                        }
                      });
                    },
                  textStyle: hoverIndices.contains(index)  ? AppTextStyles.font20BlueBold(context)
                      .copyWith(fontFamily: FontFamilyHelper.poppinsFont) :
                  AppTextStyles.font20BlackSemiBold(context)
                      .copyWith(fontFamily: FontFamilyHelper.poppinsFont),
                ),
              )),
    );
  }

  Widget tabBarText(
      {required BuildContext context,
      required String title,
      TextStyle? textStyle,
      required void Function() onTap,
      void Function(bool)? onHover}) {
    return InkWell(
      onTap: onTap,
      onHover: onHover,
      hoverColor: Colors.transparent,
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(
          title,
          style: textStyle ??
              AppTextStyles.font20BlackSemiBold(context)
                  .copyWith(fontFamily: FontFamilyHelper.poppinsFont),
        ),
      ),
    );
  }
}
