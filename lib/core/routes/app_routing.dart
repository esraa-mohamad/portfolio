import 'package:flutter/material.dart';
import 'package:portfolio/features/portfolio/ui/portfolio_all_screen.dart';

import 'routes.dart';

class AppRouting {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.portfolioScreen:
        return MaterialPageRoute(
          builder: (_) => const PortfolioAllScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('no route available for this route ${settings.name}'),
            ),
          ),
        );
    }
  }
}
