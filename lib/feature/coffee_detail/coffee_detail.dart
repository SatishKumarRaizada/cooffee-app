import 'package:coffee_finder/constants/app_string.dart';
import 'package:coffee_finder/feature/coffee_detail/widgets/coffee_detail_card_widget.dart';
import 'package:coffee_finder/feature/coffee_detail/widgets/coffee_favourite_widget.dart';
import 'package:coffee_finder/feature/coffee_detail/widgets/coffee_size_widget.dart';
import 'package:coffee_finder/theme/app_style.dart';
import 'package:flutter/material.dart';

class CoffeeDetail extends StatelessWidget {
  const CoffeeDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: const [
                CoffeeFavouriteWidget(),
                CoffeeDetailCardWidget(),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: height * 0.02),
                  Text(AppString.descriptionLabel, style: Styles.textColor18),
                  SizedBox(height: height * 0.02),
                  const Text(
                    AppString.cappiccinoDescriptionLabel,
                    style: Styles.text16,
                  ),
                  SizedBox(height: height * 0.02),
                  Text(AppString.sizeLabel, style: Styles.textColor18),
                  SizedBox(height: height * 0.02),
                  CoffeeSizeWidget(),
                  SizedBox(height: height * 0.04),
                  _priceWidget(context),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _priceWidget(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    return Row(
      children: [
        Column(
          children: [
            const Text(AppString.priceLabel),
            Text('\$ 4.50', style: Styles.textAppColor18),
          ],
        ),
        SizedBox(width: width * 0.1),
        TextButton(
          style: TextButton.styleFrom(minimumSize: Size(width * 0.4, height * 0.045)),
          onPressed: () {},
          child: const Text(AppString.buyNowLabel, style: Styles.text18),
        ),
      ],
    );
  }
//
} //End of class
