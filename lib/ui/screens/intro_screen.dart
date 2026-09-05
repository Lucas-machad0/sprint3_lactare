import 'package:flutter/material.dart';
import 'package:sprint3_lactare/navigation/app_routes.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  int _currentPage = 0;

  final List<Map<String, String>> _pages = [
    {
      'image': 'assets/images/intro.png',
      'title': 'Uma Doação que Alimenta',
      'description':
        'A doação de leite ajuda famílias e instituições que precisam de apoio. '
        'Um gesto simples pode contribuir para a alimentação de muitas pessoas '
        'e fazer a diferença na vida de quem mais precisa.',
  },
    {
      'image': 'assets/images/intro1.png',
      'title': 'Doe e Faça a Diferença',
      'description':
        'Encontre pontos de coleta, conheça as campanhas disponíveis e participe '
        'dessa corrente de solidariedade. Cada doação conta e ajuda a levar '
        'alimento e esperança para mais famílias.',
  },
  ];

  void _nextPage() {
    if (_currentPage < _pages.length - 1) {
      setState(() {
        _currentPage++;
      });
    }
  }

  void _prevPage() {
    if (_currentPage > 0) {
      setState(() {
        _currentPage--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final page = _pages[_currentPage];

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  page['image']!,
                  width: 280,
                  height: 280,
                  fit: BoxFit.cover,
                ),
              ),

              SizedBox(height: 32),

              Text(
                page['title']!,
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),

              SizedBox(height: 16),

              Text(
                page['description']!,
                style: TextStyle(fontSize: 15, height: 1.6),
                textAlign: TextAlign.center,
              ),

              SizedBox(height: 24),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  _pages.length,
                  (index) => Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    width: _currentPage == index ? 20 : 8,
                    height: 8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: _currentPage == index
                          ? Theme.of(context).colorScheme.primary
                          : Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
              ),
              
              
              SizedBox(height: 24),

              Row(
                children: [
                  if (_currentPage > 0)
                    Expanded(
                      child: OutlinedButton(
                        onPressed: _prevPage,
                        child: Text('Voltar'),
                      ),
                    ),


                  Expanded(
                    child: OutlinedButton(
                      onPressed: _currentPage < _pages.length - 1
                          ? _nextPage
                          : () => Navigator.pushReplacementNamed(
                              context, AppRoutes.home),
                      child: Text(
                        _currentPage < _pages.length - 1
                            ? 'Avançar'
                            : 'Explorar',
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}