import 'package:coffee_finder/constants/app_string.dart';
import 'package:coffee_finder/theme/app_style.dart';
import 'package:flutter/material.dart';

class CoffeeCartWidget extends StatelessWidget {
  final int cartItem;
  const CoffeeCartWidget({Key? key, required this.cartItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    return Card(
      elevation: 0.2,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          gradient: Styles.cardGradient,
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/images/coffee$cartItem.jpg',
                width: 140,
                height: 180,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(width: width * 0.1),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(AppString.capppiccinoLabel, style: Styles.text22),
                SizedBox(height: height * 0.01),
                const Text('${AppString.sizeLabel}: M'),
                SizedBox(height: height * 0.01),
                Text('\$4.50', style: Styles.textColor18),
                SizedBox(height: height * 0.02),
                Row(
                  children: [
                    OutlinedButton(
                      onPressed: () {},
                      child: const Icon(Icons.remove),
                    ),
                    SizedBox(width: width * 0.04),
                    const Text('1'),
                    SizedBox(width: width * 0.04),
                    OutlinedButton(
                      onPressed: () {},
                      child: const Icon(Icons.add),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
