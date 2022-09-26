import 'package:coffee_finder/constants/app_string.dart';
import 'package:flutter/material.dart';

class CoffeeNotification extends StatelessWidget {
  const CoffeeNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppString.notificationLabel),
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
