import 'package:flutter/material.dart';

import '../widgets/portfolio_body.dart';

class PortfolioAllScreen extends StatelessWidget {
  const PortfolioAllScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: PortfolioBody(),
    );
  }
}
