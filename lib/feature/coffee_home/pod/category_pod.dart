import 'dart:convert';
import 'package:coffee_finder/feature/coffee_home/model/coffee_model.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final coffeeCategoryProvider = FutureProvider.autoDispose<List<CoffeeTypeModel>>((ref) async {
  await Future.delayed(const Duration(seconds: 3));
  final List content = json.decode(await rootBundle.loadString('assets/data/filter_category.json'));
  final data = content.map((e) => CoffeeTypeModel.fromJson(e)).toList();
  return data;
});
