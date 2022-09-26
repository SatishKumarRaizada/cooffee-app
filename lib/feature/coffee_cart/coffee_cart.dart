import 'package:coffee_finder/constants/app_string.dart';
import 'package:coffee_finder/feature/coffee_cart/widgets/coffee_cart_widget.dart';
import 'package:flutter/material.dart';

class CoffeeCart extends StatelessWidget {
  const CoffeeCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text(AppString.coffeeCartLabel),
      ),
      bottomSheet: Container(
        padding: const EdgeInsets.all(10),
        child: TextButton(
          style: TextButton.styleFrom(
            minimumSize: Size(width * 0.9, height * 0.045),
          ),
          onPressed: () {},
          child: const Text(AppString.checkoutLabel),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              ListView.builder(
                itemCount: 3,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return CoffeeCartWidget(cartItem: index + 1);
                },
              ),
              SizedBox(height: height * 0.1),
            ],
          ),
        ),
      ),
    );
  }
}
