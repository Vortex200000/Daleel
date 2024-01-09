import 'package:dlaeelel23aka/features/SignUpScreen/presentation/pages/SignUpScreen.dart';
import 'package:dlaeelel23aka/features/SplashScreen/SplshScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../features/LoginScreen/presentation/pages/LoginScreen.dart';

class RoutesNames {
  static const String login = 'login';
  static const String signUp = '/';
  static const String splash = 'SplashScreen';
}

class AppRouter {
  static Route onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case RoutesNames.login:
        return MaterialPageRoute(
          builder: (context) => Login(),
        );
      case RoutesNames.signUp:
        return MaterialPageRoute(
          builder: (context) => SignUp(),
        );
      case RoutesNames.splash:
        return MaterialPageRoute(
          builder: (context) => SplashScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => unDefineRoute(),
        );
    }
  }

  static Widget unDefineRoute() {
    return Scaffold(
      appBar: AppBar(
        title: Text("UnDefine Route"),
      ),
      body: Center(
        child: Text("Route Not found"),
      ),
    );
  }
}
