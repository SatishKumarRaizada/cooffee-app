import 'package:flutter_riverpod/flutter_riverpod.dart';

final coffeeSizeProvider = StateNotifierProvider.autoDispose<CoffeeSizeProvider, int>((ref) {
  return CoffeeSizeProvider();
});

class CoffeeSizeProvider extends StateNotifier<int> {
  CoffeeSizeProvider() : super(0);
  int coffeeSizeProvider(int index) => state = index;
}
