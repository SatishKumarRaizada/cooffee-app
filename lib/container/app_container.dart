import 'package:coffee_finder/theme/app_theme.dart';
import 'package:coffee_finder/utils/routes/rooute_name.dart';
import 'package:coffee_finder/utils/routes/route_initialise.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

class CoffeeMain extends StatefulWidget {
  const CoffeeMain({super.key});
  @override
  State<CoffeeMain> createState() => _CoffeeMainState();
}

class _CoffeeMainState extends State<CoffeeMain> {
  _CoffeeMainState() {
    final router = FluroRouter();
    CoffeeRoute.configureRoutes(router);
    RouteInitialise.router = router;
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.coffeeTheme,
      onGenerateRoute: RouteInitialise.router.generator,
    );
  }
}
