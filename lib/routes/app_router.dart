import 'package:flutter/material.dart';

import '../pages/home_page.dart';
import '../pages/uncategorized/start_page.dart';

class AppRouter {
  const AppRouter._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    //final Object? arguments = settings.arguments;

    WidgetBuilder builder;

    switch (settings.name) {
      case StartPage.routeName:
        builder = (_) => const StartPage();
        break;

      case HomePage.routeName:
        builder = (_) => const HomePage();
        break;

      default:
        throw Exception('Invalid route: ${settings.name}');
    }

    return MaterialPageRoute(
      builder: builder,
      settings: settings,
    );
  }
}
