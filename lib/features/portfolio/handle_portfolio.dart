import 'package:flutter/material.dart';

class HandlePortfolio{
  static final HandlePortfolio _instance = HandlePortfolio._internal();
  factory HandlePortfolio() => _instance;
  HandlePortfolio._internal();

  static GlobalKey homeKey = GlobalKey();
  static GlobalKey aboutKey = GlobalKey();
  static GlobalKey projectsKey = GlobalKey();
  static GlobalKey contactKey = GlobalKey();
  static ScrollController scrollController = ScrollController();
  static int selectedIndex = 0;
  static void scrollToSection(int index) {
    selectedIndex = index;
    GlobalKey key;
    switch (index) {
      case 0:
        key = homeKey;
        break;
      case 1:
        key = aboutKey;
        break;
      case 2:
        key = projectsKey;
        break;
      case 3:
        key = contactKey;
        break;
      default:
        return;
    }
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(context,
          duration: const Duration(seconds: 1), curve: Curves.easeInOut);
    }
  }
}