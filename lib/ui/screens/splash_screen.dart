import 'package:flutter/material.dart';
import 'package:sprint3_lactare/navigation/app_routes.dart';
//import 'package:lottie/lottie.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 6), () {
      if (mounted) Navigator.pushReplacementNamed(context, AppRoutes.intro);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              'assets/images/splash.png',
              width: 250,
              height: 250,
              fit: BoxFit.contain,
            ),
          ),

            SizedBox(height: 16),
            Text(
              'Lactare App',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('Doe leite, compartilhe cuidado'),
          ],
        ),
      ),
    );
  }
}