import 'package:flutter/material.dart';
import 'package:sprint3_lactare/navigation/app_routes.dart';
import 'package:sprint3_lactare/ui/screens/faq_screen.dart';
import 'package:sprint3_lactare/ui/screens/home_screen.dart';
import 'package:sprint3_lactare/ui/screens/intro_screen.dart';
import 'package:sprint3_lactare/ui/screens/mapa_screen.dart';
import 'package:sprint3_lactare/ui/screens/noticias_screen.dart';
import 'package:sprint3_lactare/ui/screens/splash_screen.dart';

class AppNavigation {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case AppRoutes.intro:
        return MaterialPageRoute(builder: (_) => const IntroScreen());
      case AppRoutes.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case AppRoutes.noticias:
        return MaterialPageRoute(builder: (_) => const NoticiasScreen());
      case AppRoutes.faq:
        return MaterialPageRoute(builder: (_) => const FaqScreen());
      case AppRoutes.mapa:
        return MaterialPageRoute(builder: (_) => const MapaScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(body: Center(child: Text('Rota não encontrada'))),
        );
    }
  }
}
