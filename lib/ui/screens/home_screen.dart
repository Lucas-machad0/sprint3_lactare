import 'package:flutter/material.dart';
import 'package:sprint3_lactare/navigation/app_routes.dart';
import 'package:sprint3_lactare/ui/components/top_bar.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SpaceTopBar(
        titulo: 'Lactare'                   
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('O que você quer explorar?',
                style: Theme.of(context).textTheme.titleLarge),

             SizedBox(height: 20),

            _MenuCard(
              icone: Icons.newspaper,
              titulo: 'Noticias',
              subtitulo: 'Acompanhe campanhas e ações de doação de leite',
              onTap: () => Navigator.pushNamed(context, AppRoutes.noticias),
            ),

             SizedBox(height: 12),
             
            _MenuCard(
              icone: Icons.info_outline,
              titulo: 'Central de Dúvidas',
              subtitulo: 'Encontre respostas sobre como realizar uma doação',
              onTap: () => Navigator.pushNamed(context, AppRoutes.faq),
            ),
            
            SizedBox(height: 12),
             
            _MenuCard(
              icone: Icons.location_city,
              titulo: 'Mapa de Doacoes',
              subtitulo: 'Encontre os pontos de coleta mais próximos',
              onTap: () => Navigator.pushNamed(context, AppRoutes.mapa),
            ),
          ],
        ),
      ),
    );
  }
}

class _MenuCard extends StatelessWidget {
  final IconData icone;
  final String titulo;
  final String subtitulo;
  final VoidCallback onTap;

  const _MenuCard({
    required this.icone,
    required this.titulo,
    required this.subtitulo,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(icone, size: 32),
        title: Text(titulo, style:  TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitulo),
        trailing:  Icon(Icons.chevron_right),
        onTap: onTap,
      ),
    );
  }
}