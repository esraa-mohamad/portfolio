import 'package:flutter/material.dart';
import 'package:portfolio/core/widgets/adaptive_layout.dart';
import 'package:portfolio/features/copy_right/presentation/screen/view/copy_right_screen.dart';
import 'package:portfolio/features/portfolio/presentation/screen/widgets/portfolio_header.dart';
import 'package:portfolio/features/portfolio/presentation/screen/widgets/portfolio_header_mobile.dart';
import '../../../../about/screen/ui/about_part_screen.dart';
import '../../../../contact/screen/ui/contact_part_screen.dart';
import '../../../../home/screen/ui/home_part_screen.dart';
import '../../../../projects/screen/project_screen/ui/projects_part_screen.dart';
import '../../manager/handle_portfolio.dart';

class PortfolioBody extends StatefulWidget {
  const PortfolioBody({super.key});

  @override
  State<PortfolioBody> createState() => _PortfolioBodyState();
}

class _PortfolioBodyState extends State<PortfolioBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: HandlePortfolio.scrollController,
      child: Column(
        children: [
          AdaptiveLayout(
            mobileLayout: (context) => Center(child: PortfolioHeaderMobile()),
            tabletLayout: (context) => PortfolioHeader(),
            desktopLayout: (context) => PortfolioHeader(),
          ),
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
          CopyRightScreen(),
        ],
      ),
    );
  }
}
