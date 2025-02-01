import 'package:flutter/material.dart';
import '../widgets/home_desktop.dart';
import '../widgets/home_mobile.dart';
import '../../../../core/widgets/adaptive_layout.dart';

class HomePartScreen extends StatelessWidget {
  const HomePartScreen({super.key, required this.globalKey});

  final GlobalKey globalKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: globalKey,
      color: Colors.white,
      child: AdaptiveLayout(
        mobileLayout: (context) => HomeMobile(),
        tabletLayout:  (context) => HomeDesktop(),
        desktopLayout: (context) => HomeDesktop(),
      ),
    );
  }
}
