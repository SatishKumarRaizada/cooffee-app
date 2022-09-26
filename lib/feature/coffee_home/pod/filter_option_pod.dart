import 'package:flutter_riverpod/flutter_riverpod.dart';

final coffeeOptionProvider = StateNotifierProvider.autoDispose<FilterOptionToggle, int>((ref) {
  return FilterOptionToggle();
});

class FilterOptionToggle extends StateNotifier<int> {
  FilterOptionToggle() : super(0);
  int coffeeFilterOptionToggle(int index) => state = index;
}
