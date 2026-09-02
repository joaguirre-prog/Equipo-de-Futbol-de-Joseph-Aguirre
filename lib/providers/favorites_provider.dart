import 'package:flutter/material.dart';
import '../models/player.dart';

class FavoritesProvider extends ChangeNotifier {
  final List<Player> _favorites = [];

  List<Player> get favorites => _favorites;

  bool isFavorite(Player player) {
    return _favorites.any((item) => item.id == player.id);
  }

  void toggleFavorite(Player player) {
    if (isFavorite(player)) {
      _favorites.removeWhere((item) => item.id == player.id);
    } else {
      _favorites.add(player);
    }

    notifyListeners();
  }
}