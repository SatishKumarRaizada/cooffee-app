import 'dart:convert';

class CoffeeTypeModel {
  CoffeeTypeModel({
    required this.name,
    required this.price,
    required this.rating,
    required this.description,
    required this.origin,
    required this.ingredient,
  });

  final String name;
  final String price;
  final String rating;
  final String description;
  final String origin;
  final String ingredient;

  CoffeeTypeModel copyWith({
    required String name,
    required String price,
    required String rating,
    required String description,
    required String origin,
    required String ingredient,
  }) =>
      CoffeeTypeModel(
        name: name,
        price: price,
        rating: rating,
        description: description,
        origin: origin,
        ingredient: ingredient,
      );

  factory CoffeeTypeModel.fromRawJson(String str) => CoffeeTypeModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CoffeeTypeModel.fromJson(Map<String, dynamic> json) => CoffeeTypeModel(
        name: json["name"],
        price: json["price"],
        rating: json["rating"],
        description: json["description"],
        origin: json["origin"],
        ingredient: json["ingredient"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "price": price,
        "rating": rating,
        "description": description,
        "origin": origin,
        "ingredient": ingredient,
      };
}
