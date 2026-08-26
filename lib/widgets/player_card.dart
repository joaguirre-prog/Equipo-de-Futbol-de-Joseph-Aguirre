import 'package:flutter/material.dart';
import '../data/players_data.dart';

class PlayerCard extends StatelessWidget {
  final Player player;
  final bool favorite;
  final VoidCallback onFavorite;

  const PlayerCard({
    super.key,
    required this.player,
    required this.favorite,
    required this.onFavorite,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: ListTile(
        contentPadding: const EdgeInsets.all(10),
        leading: CircleAvatar(
          radius: 28,
          backgroundColor: const Color(0xFF0B6623),
          child: Text(
            player.initials,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        title: Text(
          player.name,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text('${player.position} • Camiseta ${player.number}'),
        trailing: IconButton(
          tooltip: 'Favorito',
          icon: Icon(
            favorite ? Icons.favorite : Icons.favorite_border,
            color: favorite ? Colors.red : Colors.grey,
          ),
          onPressed: onFavorite,
        ),
      ),
    );
  }
}
