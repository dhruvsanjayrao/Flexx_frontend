import 'package:flutter/material.dart';
import 'package:invest/common/widgets/bottom_bar.dart';
import 'package:invest/features/screens/Account/account_profile.dart';
import 'package:invest/features/screens/Account/account_settings.dart';
import 'package:invest/features/screens/Account/faq.dart';
import 'package:invest/features/screens/Account/support.dart';
import 'package:invest/features/screens/Account/tos.dart';
import 'package:invest/features/screens/Home/buy.dart';
import 'package:invest/features/screens/Home/deposit.dart';
import 'package:invest/features/screens/Withdraw/landing.dart';
import 'package:invest/features/screens/Withdraw/withdraw.dart';
import 'package:invest/features/screens/auth/create_account.dart';
import 'package:invest/features/screens/auth/login.dart';
import 'features/screens/Home/home_screen.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AuthScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AuthScreen(),
      );

    case LoginScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const LoginScreen(),
      );

    case HomeScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const HomeScreen(),
      );

    case AccountProfile.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AccountProfile(),
      );

    case BottomBar.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const BottomBar(),
      );

    case AccountSettings.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AccountSettings(),
      );

    case Support.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Support(),
      );

    case Tos.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Tos(),
      );

    case Faq.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Faq(),
      );

    case Withdraw.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Withdraw(),
      );

    case Landing.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Landing(),
      );

    case Buy.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Buy(),
      );

    case Deposit.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Deposit(),
      );

    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(
            child: Text('Error'),
          ),
        ),
      );
  }
}
