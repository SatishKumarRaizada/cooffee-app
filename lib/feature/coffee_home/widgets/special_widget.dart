import 'package:coffee_finder/constants/app_icon.dart';
import 'package:coffee_finder/constants/app_string.dart';
import 'package:coffee_finder/theme/app_color.dart';
import 'package:coffee_finder/theme/app_style.dart';
import 'package:flutter/material.dart';

class SpecialWidget extends StatelessWidget {
  final Function onTap;
  const SpecialWidget({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Text(AppString.specialLabel, style: Styles.text20),
        ),
        SizedBox(height: height * 0.01),
        GestureDetector(
          onTap: () {
            onTap();
          },
          child: Card(
            elevation: 5,
            borderOnForeground: false,
            shadowColor: AppColor.lightGreyColor,
            semanticContainer: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: Styles.cardGradient,
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      AppIcon.coffeeIcon3,
                      width: 140,
                      height: height * 0.15,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(width: width * 0.02),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(AppString.mustTryLabel, style: Styles.text22),
                        SizedBox(height: height * 0.005),
                        Text('\$4.50', style: Styles.boldColor18),
                        SizedBox(height: height * 0.01),
                        TextButton(onPressed: () {}, child: const Text(AppString.buyNowLabel)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
