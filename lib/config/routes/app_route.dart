import 'package:flowers_shopping_app/config/routes/routes_name.dart';
import 'package:flowers_shopping_app/presentation/screens/auth/register_view.dart';
import 'package:flowers_shopping_app/presentation/screens/onboarding/onboarding_view.dart';
import 'package:flutter/material.dart';

class AppRoute {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.registerView:
        return _handelMaterialPageRoute(
            settings: settings, widget: const RegisterView());
      case RoutesName.onboardingView:
        return _handelMaterialPageRoute(
            settings: settings, widget: const OnboardingView());
      default:
        return _handelMaterialPageRoute(
            settings: settings, widget: const Scaffold());
    }
  }

  static MaterialPageRoute<dynamic> _handelMaterialPageRoute(
      {required Widget widget, required RouteSettings settings}) {
    return MaterialPageRoute(builder: (context) => widget, settings: settings);
  }
}
