import 'package:flutter_riverpod/flutter_riverpod.dart';

final coffeeTabProvider = StateNotifierProvider.autoDispose<ToggleCoffeeTab, int>((ref) {
  return ToggleCoffeeTab();
});

class ToggleCoffeeTab extends StateNotifier<int> {
  ToggleCoffeeTab() : super(0);
  int toggleCoffeeTab(int index) => state = index;
}
