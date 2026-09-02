import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../data/players_data.dart';
import '../providers/favorites_provider.dart';
import '../widgets/player_card.dart';

class PlayersScreen extends StatelessWidget {
  const PlayersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jugadores'),
      ),
      body: Consumer<FavoritesProvider>(
        builder: (context, favoritesProvider, child) {
          return ListView.separated(
            padding: const EdgeInsets.symmetric(vertical: 10),
            itemCount: players.length,
            separatorBuilder: (_, __) => const Divider(height: 1),
            itemBuilder: (context, index) {
              final player = players[index];

              return PlayerCard(
                player: player,
                favorite: favoritesProvider.isFavorite(player),
                onFavorite: () {
                  favoritesProvider.toggleFavorite(player);

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        favoritesProvider.isFavorite(player)
                            ? '${player.name} fue agregado a favoritos'
                            : '${player.name} fue quitado de favoritos',
                      ),
                      duration: const Duration(seconds: 2),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
      floatingActionButton: Consumer<FavoritesProvider>(
        builder: (context, favoritesProvider, child) {
          return FloatingActionButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    'Tienes ${favoritesProvider.favorites.length} jugador(es) favorito(s).',
                  ),
                ),
              );
            },
            child: const Icon(Icons.favorite),
          );
        },
      ),
    );
  }
}
