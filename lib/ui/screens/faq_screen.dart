import 'package:flutter/material.dart';
import 'package:sprint3_lactare/ui/components/top_bar.dart';

class FaqScreen extends StatelessWidget {
  const FaqScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SpaceTopBar(titulo: 'Central de Dúvidas'),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: ClipOval(
                child: Image.asset(
                  'assets/images/faq.png',
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            const SizedBox(height: 24),

            Center(
              child: Text(
                'Como podemos ajudar?',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),

            const SizedBox(height: 8),

            const Center(
              child: Text(
                'Confira as principais dúvidas sobre a doação de leite.',
                style: TextStyle(fontSize: 14, height: 1.6),
              ),
            ),

            const SizedBox(height: 24),

            Text(
              'Sobre as doações',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),

            const SizedBox(height: 16),

            const Text(
              '1. Como faço uma doação?',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              'Escolha uma campanha disponível no portal, consulte os produtos '
              'necessários e entregue a doação em um dos pontos de coleta.',
              style: TextStyle(fontSize: 14, height: 1.6),
            ),

            const SizedBox(height: 20),

            const Text(
              '2. Quais tipos de leite posso doar?',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              'Cada campanha informa os tipos de leite necessários. Antes de '
              'realizar a doação, consulte as informações apresentadas no portal.',
              style: TextStyle(fontSize: 14, height: 1.6),
            ),

            const SizedBox(height: 20),

            const Text(
              '3. O produto precisa estar dentro da validade?',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              'Sim. O leite deve estar dentro do prazo de validade, em boas '
              'condições e com a embalagem fechada.',
              style: TextStyle(fontSize: 14, height: 1.6),
            ),

            const SizedBox(height: 24),

            Text(
              'Entrega e acompanhamento',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),

            const SizedBox(height: 16),

            const Text(
              '4. Onde posso entregar minha doação?',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              'Os endereços dos pontos de coleta são apresentados nas '
              'informações de cada campanha.',
              style: TextStyle(fontSize: 14, height: 1.6),
            ),

            const SizedBox(height: 20),

            const Text(
              '5. Quem recebe as doações?',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              'As doações são destinadas às famílias e instituições '
              'cadastradas nas campanhas do portal.',
              style: TextStyle(fontSize: 14, height: 1.6),
            ),

            const SizedBox(height: 20),

            const Text(
              '6. Posso acompanhar o resultado da campanha?',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              'Sim. As quantidades arrecadadas e as atualizações das campanhas '
              'serão divulgadas na tela de notícias.',
              style: TextStyle(fontSize: 14, height: 1.6),
            ),

            const SizedBox(height: 24),

            Text(
              'Ainda está com dúvidas?',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),

            const SizedBox(height: 8),

            const Text(
              'Entre em contato com a equipe responsável pelo portal para '
              'receber mais informações.',
              style: TextStyle(fontSize: 14, height: 1.6),
            ),
          ],
        ),
      ),
    );
  }
}