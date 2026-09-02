import 'package:flutter/material.dart';
import '../widgets/team_logo.dart';
import 'players_screen.dart';
import 'squad_screen.dart';
import 'info_screen.dart';
import 'favorites_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void _go(BuildContext context, Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => page),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi Equipo de Fútbol'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 10),
            const TeamLogo(size: 150),
            const SizedBox(height: 16),
            const Text(
              'EQUIPO DE FÚTBOL DE JOSEPH AGUIRRE',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0B6623),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Conoce nuestra plantilla, jugadores y datos principales del equipo.',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () => _go(context, const PlayersScreen()),
                icon: const Icon(Icons.people),
                label: const Text('Ver jugadores'),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () => _go(context, const SquadScreen()),
                icon: const Icon(Icons.grid_view),
                label: const Text('Ver plantilla'),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
  width: double.infinity,
  child: ElevatedButton.icon(
    onPressed: () => _go(context, const InfoScreen()),
    icon: const Icon(Icons.info_outline),
    label: const Text('Información del equipo'),
  ),
),
const SizedBox(height: 10),
SizedBox(
  width: double.infinity,
  child: ElevatedButton.icon(
    onPressed: () => _go(context, const FavoritesScreen()),
    icon: const Icon(Icons.favorite),
    label: const Text('Mis favoritos'),
  ),
),

              ),
            ),
          ],
        ),
      ),
    );
  }
}
