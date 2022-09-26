import 'package:coffee_finder/feature/coffee_detail/coffee_detail.dart';
import 'package:coffee_finder/feature/coffee_tab/coffee_tab.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

var rootHandler = Handler(handlerFunc: (context, params) {
  return CoffeeTab();
});

var coffeeDetailHandler = Handler(handlerFunc: (context, params) {
  return const CoffeeDetail();
});

var errorRouteHandler = Handler(handlerFunc: (context, arguments) {
  return Scaffold(
    appBar: AppBar(
      title: const Text('Error'),
    ),
    body: const Center(
      child: Text('ERROR'),
    ),
  );
});
