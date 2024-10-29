import 'package:flutter/material.dart';
import 'package:portfolio/features/about/screen/ui/about_part_screen.dart';
import 'package:portfolio/features/home/screen/ui/home_part_screen.dart';

class PortfolioBody extends StatelessWidget {
  const PortfolioBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          HomePartScreen(),
          AboutPartScreen(),
        ],
      ),
    );
  }
}
