import 'package:flutter/material.dart';
import 'package:flutter_mvvm/presentation/forgotPassword/forgot_password.dart';
import 'package:flutter_mvvm/presentation/login/login.dart';
import 'package:flutter_mvvm/presentation/main/main_view.dart';
import 'package:flutter_mvvm/presentation/onBording/on_bording.dart';
import 'package:flutter_mvvm/presentation/register/register.dart';
import 'package:flutter_mvvm/presentation/resources/strings_manager.dart';
import 'package:flutter_mvvm/presentation/splash/splash.dart';
import 'package:flutter_mvvm/presentation/storeDetails/store_details.dart';

class Routes {
  static const String splashRoute = "/";
  static const String onBordingRoute = "/onbording";
  static const String loginRoute = "/loginroute";
  static const String registerRoute = "/register";
  static const String forgetPasswordRoute = "/forgotPassword";
  static const String mainRoute = "/main";
  static const String storeDetailsRoute = "/storedetails";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => SplashView());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => LoginView());
      case Routes.onBordingRoute:
        return MaterialPageRoute(builder: (_) => OnBordingView());
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) => RegisterView());
      case Routes.forgetPasswordRoute:
        return MaterialPageRoute(builder: (_) => ForgotPasswordView());
      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_) => MainView());
      case Routes.storeDetailsRoute:
        return MaterialPageRoute(builder: (_) => StoreDetailsView());
      default:
        return undefinedRoute();
    }
  }

  static Route<dynamic> undefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text(AppStrings.noRouteFound),
        ),
        body: const Center(
          child: Text(AppStrings.noRouteFound),
        ),
      ),
    );
  }
}
