import 'package:flutter/material.dart';
import 'package:portfolio/core/widgets/icons_link.dart';
import 'package:portfolio/features/home/screen/widgets/download_cv_file.dart';
import 'package:portfolio/features/home/screen/widgets/home_image.dart';
import 'package:portfolio/features/home/screen/widgets/home_name_and_logo.dart';
import 'package:portfolio/features/home/screen/widgets/home_tab_bar.dart';
import 'package:portfolio/features/home/screen/widgets/welcome_overview.dart';

class HomePartScreen extends StatelessWidget {
  const HomePartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.04,
          vertical: MediaQuery.of(context).size.height * 0.05),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LayoutBuilder(
            builder: (context, constraints) {
              return constraints.maxWidth > 600
                  ? const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        HomeNameAndLogo(),
                        HomeTabBar(),
                      ],
                    )
                  : const Wrap(
                      alignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Flexible(child: Center(child: HomeNameAndLogo())),
                        Flexible(child: Center(child: HomeTabBar())),
                      ],
                    );
            },
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
          ),
          LayoutBuilder(
            builder: (context, constraints) {
              return constraints.maxWidth > 600
                  ? const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  WelcomeOverview(),
                  HomeImage(),
                ],
              )
                  : const Wrap(
                alignment: WrapAlignment.center,
                children: [
                  WelcomeOverview(),
                  HomeImage(),
                ],
              );
            },
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [IconsLink(), DownloadCvFile()],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.08,
          ),
        ],
      ),
    );
  }
}
