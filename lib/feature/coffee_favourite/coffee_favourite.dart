import 'package:coffee_finder/constants/app_string.dart';
import 'package:flutter/material.dart';

class CoffeeFavourite extends StatelessWidget {
  const CoffeeFavourite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppString.favouriteLabel),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
