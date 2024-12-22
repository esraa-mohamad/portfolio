import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/core/helper/spacing.dart';
import 'portfolio_tab_bar/portfolio_name_and_logo.dart';
import 'portfolio_tab_bar/portfolio_tab_bar.dart';

import '../../manager/handle_portfolio.dart';

class PortfolioHeaderMobile extends StatefulWidget {
  const PortfolioHeaderMobile({super.key});

  @override
  State<PortfolioHeaderMobile> createState() => _PortfolioHeaderMobileState();
}

class _PortfolioHeaderMobileState extends State<PortfolioHeaderMobile> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:double.infinity,
      child: Padding(
        padding:  EdgeInsets.symmetric(
          horizontal: 20.w ,
          vertical: 10.h,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const PortfolioNameAndLogo(),
            verticalSpace(5),
            PortfolioTabBar(
              selectedIndex: HandlePortfolio.selectedIndex,
              onTap: (int index){
                setState(() {
                  HandlePortfolio.selectedIndex == index;
                });
                HandlePortfolio.scrollToSection(index);
              },
            ),
          ],
        ),
      ),
    );
  }
}
