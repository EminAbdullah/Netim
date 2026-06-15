import 'package:flutter/material.dart';
import 'package:netim/screens/landing_page.dart';

class Routes {
  static MaterialPageRoute materialPageRoute(RouteSettings settings) {
    switch (settings.name) {
      /*case "/otp-screen":
        return MaterialPageRoute(builder: (context) => OTPScreen(expireMinute: settings.arguments as double));
      case "/permission-screen":
        return MaterialPageRoute(builder: (context) => PermissionScreen(fullName: settings.arguments as String?));*/
      case "/landing-page":
        return MaterialPageRoute(builder: (context) => const LandingPage());
      default:
        return MaterialPageRoute(builder: (context) => const LandingPage());
    }
  }
}
