import 'package:flutter/material.dart';


import '../presentation/auth/forgot_password/forgotPassword.dart';
import '../presentation/auth/login/loginView.dart';
import '../presentation/auth/register/registerView.dart';
import '../presentation/main/innerScreens/details.dart';
import '../presentation/main/mainView.dart';
import '../presentation/onboarding/onboardingView.dart';
import '../presentation/splash/splash.dart';
import 'strings_manager.dart';

class Routes {
  static const String splashRoute = '/';
  static const String onBoardingRoute = '/onboarding';
  static const String loginRoute = '/login';
  static const String registerRoute = '/register';
  static const String forgotPasswordRoute = '/forgotPassword';
  static const String mainRoute = '/main';
  static const String detailsRoute = '/details';
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const Splash());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginView());
      case Routes.onBoardingRoute:
        return MaterialPageRoute(builder: (_) => const OnboardingView());
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) => const RegisterView());
      case Routes.forgotPasswordRoute:
        return MaterialPageRoute(builder: (_) => const ForgotPassword());
      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_) => const MainView());
      case Routes.detailsRoute:
        return MaterialPageRoute(builder: (_) => const Details());

      default:
        return pageNotFound();
    }
  }

  static Route<dynamic> pageNotFound() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text(AppString.noPageFound),
        ),
        body: const Center(
          child: Text(AppString.noPageFound),
        ),
      ),
    );
  }
}
