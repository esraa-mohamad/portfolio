import 'package:flutter/material.dart';
import 'package:portfolio/features/about/screen/ui/about_part_screen.dart';
import 'package:portfolio/features/contact/screen/ui/contact_part_screen.dart';
import 'package:portfolio/features/home/screen/ui/home_part_screen.dart';
import 'package:portfolio/features/portfolio/handle_portfolio.dart';
import 'package:portfolio/features/portfolio/portfolio_tab_bar/portfolio_tab_bar.dart';

import '../portfolio_tab_bar/portfolio_name_and_logo.dart';
import '../../projects/screen/project_screen/ui/projects_part_screen.dart';

class PortfolioBody extends StatefulWidget {
  const PortfolioBody({super.key});

  @override
  State<PortfolioBody> createState() => _PortfolioBodyState();
}

class _PortfolioBodyState extends State<PortfolioBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          color: Colors.white,
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width *0.03 ,
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
        ),
         Expanded(
           child: SingleChildScrollView(
             controller: HandlePortfolio.scrollController,
            child: Column(
              children: [
                HomePartScreen(
                  globalKey: HandlePortfolio.homeKey,
                ),
                AboutPartScreen(
                  globalKey: HandlePortfolio.aboutKey,
           
                ),
                ProjectsPartScreen(
                  globalKey: HandlePortfolio.projectsKey,
           
                ),
                ContactPartScreen(
                  globalKey: HandlePortfolio.contactKey,
           
                ),
              ],
            ),
                   ),
         ),
      ],
    );
  }
}
