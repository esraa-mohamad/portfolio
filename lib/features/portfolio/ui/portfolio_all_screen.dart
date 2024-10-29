import 'package:flutter/material.dart';
import 'package:portfolio/features/portfolio/ui/portfolio_body.dart';

class PortfolioAllScreen extends StatelessWidget {
  const PortfolioAllScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PortfolioBody(),
    );
  }
}
