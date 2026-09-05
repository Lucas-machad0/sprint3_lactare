import 'package:flutter/material.dart';
import 'package:sprint3_lactare/ui/components/top_bar.dart';

class NoticiasScreen extends StatelessWidget {
  const NoticiasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SpaceTopBar(titulo: 'Notícias'),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Últimas notícias',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),

            const SizedBox(height: 16),

            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  'assets/images/noticia.png',
                  width: double.infinity,
                  height: 180,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            const SizedBox(height: 16),

            Text(
              'Campanha arrecada leite para famílias',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),

            const SizedBox(height: 8),

            const Text(
              '04 de setembro de 2026',
              style: TextStyle(fontSize: 12),
            ),

            const SizedBox(height: 8),

            const Text(
              'Uma nova campanha de doação de leite foi iniciada para ajudar '
              'famílias em situação de vulnerabilidade. As doações podem ser '
              'realizadas nos pontos de coleta cadastrados no portal.',
              style: TextStyle(fontSize: 14, height: 1.6),
            ),

            const SizedBox(height: 24),

            Text(
              'Mais de 500 litros de leite arrecadados',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),

            const SizedBox(height: 8),

            const Text(
              '02 de setembro de 2026',
              style: TextStyle(fontSize: 12),
            ),

            const SizedBox(height: 8),

            const Text(
              'A campanha alcançou a marca de 500 litros de leite arrecadados. '
              'As doações serão entregues às famílias e instituições cadastradas.',
              style: TextStyle(fontSize: 14, height: 1.6),
            ),

            const SizedBox(height: 24),

            Text(
              'Novos pontos de coleta disponíveis',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),

            const SizedBox(height: 8),

            const Text(
              '30 de agosto de 2026',
              style: TextStyle(fontSize: 12),
            ),

            const SizedBox(height: 8),

            const Text(
              'Novos pontos de coleta foram adicionados para facilitar as '
              'doações. Consulte o endereço mais próximo e participe da campanha.',
              style: TextStyle(fontSize: 14, height: 1.6),
            ),
          ],
        ),
      ),
    );
  }
}