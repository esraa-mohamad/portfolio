import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'portfolio_app.dart';
import 'core/routes/app_routing.dart';

void main() {

  runApp( DevicePreview(
    enabled: false,
    builder: (context) {
      return PortfolioApp(appRouting: AppRouting(),);
    }
  ));
}


