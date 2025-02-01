import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/routes/app_routing.dart';
import 'core/routes/routes.dart';

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key, required this.appRouting});

  final AppRouting appRouting;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1620, 740),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        onGenerateRoute: appRouting.onGenerateRoute,
        initialRoute: Routes.portfolioScreen,
      ),
    );
  }
}
