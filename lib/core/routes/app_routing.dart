import 'package:flutter/material.dart';
import 'package:portfolio/core/models/project_data_model.dart';
import 'package:portfolio/features/portfolio/ui/portfolio_all_screen.dart';
import 'package:portfolio/features/projects/screen/project_details_screen/ui/project_details_screen.dart';

import 'routes.dart';

class AppRouting {
  Route? onGenerateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.portfolioScreen:
        return MaterialPageRoute(
          builder: (_) => const PortfolioAllScreen(),
        );
        case Routes.projectDetailsScreen:
        return MaterialPageRoute(
          builder: (_) => ProjectDetailsScreen(projectDataModel: arguments as ProjectDataModel,),
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
