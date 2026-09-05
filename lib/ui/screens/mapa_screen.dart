import 'package:flutter/material.dart';
import 'package:sprint3_lactare/ui/components/top_bar.dart';

class MapaScreen extends StatelessWidget {
  const MapaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SpaceTopBar(titulo: 'Pontos de Doação'),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Encontre um ponto próximo',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),

            const SizedBox(height: 8),

            const Text(
              'Confira no mapa os locais disponíveis para realizar '
              'a sua doação de leite.',
              style: TextStyle(fontSize: 14, height: 1.6),
            ),

            const SizedBox(height: 20),

            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/images/mapa.png',
                width: double.infinity,
                height: 300,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(height: 24),

            Text(
              'Pontos disponíveis',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),

            const SizedBox(height: 16),

            const Text(
              'Hospital Solidário',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 4),

            const Text(
              'Av. Esperança, 120 – Centro',
              style: TextStyle(fontSize: 14),
            ),

            const SizedBox(height: 16),

            const Text(
              'Instituto Cuidar',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 4),

            const Text(
              'Av. do Leite, 350 – Jardim União',
              style: TextStyle(fontSize: 14),
            ),

            const SizedBox(height: 16),

            const Text(
              'Casa da Amizade',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 4),

            const Text(
              'Rua do Cuidado, 85 – Vila Esperança',
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}