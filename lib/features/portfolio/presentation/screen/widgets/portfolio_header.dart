import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'portfolio_tab_bar/portfolio_name_and_logo.dart';
import 'portfolio_tab_bar/portfolio_tab_bar.dart';

import '../../manager/handle_portfolio.dart';

class PortfolioHeader extends StatefulWidget {
  const PortfolioHeader ({super.key});

  @override
  State<PortfolioHeader> createState() => _PortfolioHeaderState();
}

class _PortfolioHeaderState extends State<PortfolioHeader> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(
        horizontal: 20.w
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const PortfolioNameAndLogo(),
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
    );

  }
}
