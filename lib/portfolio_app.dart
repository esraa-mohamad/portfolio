import 'package:flutter/material.dart';
import 'core/routes/app_routing.dart';
import 'core/routes/routes.dart';

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key, required this.appRouting});

  final AppRouting appRouting ;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: appRouting.onGenerateRoute,
        initialRoute: Routes.portfolioScreen,
      );
  }
}
