import 'package:flutter/material.dart';

import '../pages/FirstPage.dart';
import '../pages/SecondPage.dart';

class AppRoutes {
  static Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case firstPage:
        return _createRoute(const FirstPage());
      case secondPage:
        return _createRoute(const SecondPage());
    }
  }

  static String initialRoute = firstPage;
  static const String firstPage = '/first_page';
  static const String secondPage = '/first_page/second_page';

  static Route _createRoute(Widget page) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation1, animation2, child) =>
          FadeTransition(opacity: animation1, child: child),
      transitionDuration: const Duration(milliseconds: 200),
    );
  }
}
