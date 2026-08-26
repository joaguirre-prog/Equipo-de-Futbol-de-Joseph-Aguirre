import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../widgets/team_logo.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  Future<void> _openWeb(BuildContext context) async {
    final uri = Uri.parse('https://www.fifa.com/');
    final launched = await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    );

    if (!launched && context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('No se pudo abrir el enlace.')),
      );
    }
  }

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Sobre el equipo'),
        content: const Text(
          'Esta aplicación fue desarrollada en Flutter como parte de la Actividad Integradora 2.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cerrar'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Información'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Center(child: TeamLogo(size: 130)),
            const SizedBox(height: 16),
            const Text(
              'Información del equipo',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0B6623),
              ),
            ),
            const Divider(height: 30),
            const ListTile(
              leading: Icon(Icons.sports_soccer),
              title: Text('Disciplina'),
              subtitle: Text('Fútbol'),
            ),
            const ListTile(
              leading: Icon(Icons.groups),
              title: Text('Plantilla'),
              subtitle: Text('8 jugadores registrados'),
            ),
            const ListTile(
              leading: Icon(Icons.palette),
              title: Text('Colores'),
              subtitle: Text('Verde y blanco'),
            ),
            const Spacer(),
            ElevatedButton.icon(
              onPressed: () => _showDialog(context),
              icon: const Icon(Icons.info),
              label: const Text('Acerca de la aplicación'),
            ),
            const SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: () => _openWeb(context),
              icon: const Icon(Icons.public),
              label: const Text('Abrir FIFA en Internet'),
            ),
          ],
        ),
      ),
    );
  }
}
