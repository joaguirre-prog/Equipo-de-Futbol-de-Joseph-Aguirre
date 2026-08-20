import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const EquipoFutbolApp());
}

class EquipoFutbolApp extends StatelessWidget {
  const EquipoFutbolApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Equipo de Fútbol de Joseph Aguirre',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.light,
        ),
        textTheme: GoogleFonts.poppinsTextTheme(),
        useMaterial3: true,
      ),
      home: const EquipoHomePage(),
    );
  }
}

class EquipoHomePage extends StatefulWidget {
  const EquipoHomePage({super.key});

  @override
  State<EquipoHomePage> createState() => _EquipoHomePageState();
}

class _EquipoHomePageState extends State<EquipoHomePage> {
  bool mostrarInfo = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Equipo de Fútbol de Joseph Aguirre',
          style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              width: 125,
              height: 125,
              decoration: BoxDecoration(
                color: Colors.blue.shade700,
                shape: BoxShape.circle,
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 10,
                    offset: Offset(0, 5),
                    color: Colors.black26,
                  ),
                ],
              ),
              child: const Icon(
                Icons.sports_soccer,
                size: 72,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'EQUIPO DE FÚTBOL',
              style: GoogleFonts.poppins(
                fontSize: 27,
                fontWeight: FontWeight.bold,
                color: Colors.blue.shade800,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Proyecto de Joseph Aguirre',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(fontSize: 17),
            ),
            const SizedBox(height: 20),
            Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(18),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _DatoEquipo(
                          icono: Icons.location_on,
                          titulo: 'Estadio',
                          valor: 'Municipal',
                        ),
                        _DatoEquipo(
                          icono: Icons.emoji_events,
                          titulo: 'Títulos',
                          valor: '5',
                        ),
                        _DatoEquipo(
                          icono: Icons.groups,
                          titulo: 'Jugadores',
                          valor: '22',
                        ),
                      ],
                    ),
                    if (mostrarInfo) ...[
                      const SizedBox(height: 18),
                      Text(
                        'Este proyecto presenta un equipo de fútbol '
                        'con información básica sobre su estadio, '
                        'títulos y jugadores. La aplicación demuestra '
                        'el uso de widgets e interacción en Flutter.',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(fontSize: 14),
                      ),
                    ],
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                setState(() {
                  mostrarInfo = !mostrarInfo;
                });
              },
              icon: Icon(
                mostrarInfo ? Icons.visibility_off : Icons.info_outline,
              ),
              label: Text(
                mostrarInfo ? 'Ocultar información' : 'Mostrar información',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DatoEquipo extends StatelessWidget {
  final IconData icono;
  final String titulo;
  final String valor;

  const _DatoEquipo({
    required this.icono,
    required this.titulo,
    required this.valor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icono, color: Colors.blue.shade700, size: 30),
        const SizedBox(height: 6),
        Text(titulo, style: const TextStyle(fontWeight: FontWeight.bold)),
        Text(valor),
      ],
    );
  }
}
