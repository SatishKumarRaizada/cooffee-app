import 'package:flutter_riverpod/flutter_riverpod.dart';

final coffeeFavouriteProvider = StateNotifierProvider.autoDispose<CoffeeFavourite, bool>((ref) {
  return CoffeeFavourite();
});

class CoffeeFavourite extends StateNotifier<bool> {
  CoffeeFavourite() : super(false);
  bool favouriteToggle() => state = !state;
}
