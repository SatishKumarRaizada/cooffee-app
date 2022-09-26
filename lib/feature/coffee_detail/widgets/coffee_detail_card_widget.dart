import 'package:coffee_finder/constants/app_icon.dart';
import 'package:coffee_finder/constants/app_string.dart';
import 'package:coffee_finder/theme/app_color.dart';
import 'package:coffee_finder/theme/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CoffeeDetailCardWidget extends StatelessWidget {
  const CoffeeDetailCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    return Card(
      color: AppColor.brownColor.withOpacity(0.9),
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(AppString.capppiccinoLabel, style: Styles.text25),
                SizedBox(height: height * 0.01),
                Text(AppString.oakMilkLabel, style: Styles.textColor14),
                SizedBox(height: height * 0.01),
                Row(
                  children: [
                    SvgPicture.asset(AppIcon.starIcon, color: AppColor.appColor),
                    SizedBox(width: width * 0.01),
                    const Text('4.5', style: Styles.text18),
                    SizedBox(width: width * 0.02),
                    const Text('(6,300)', style: Styles.text18),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: width * 0.15,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: AppColor.appBlack,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          SvgPicture.asset(
                            AppIcon.beansIcon,
                            color: AppColor.appColor,
                            width: 30,
                          ),
                          Text(AppString.coffeeLabel, style: Styles.textColor14),
                        ],
                      ),
                    ),
                    SizedBox(width: width * 0.04),
                    Container(
                      padding: const EdgeInsets.all(10),
                      width: width * 0.15,
                      decoration: BoxDecoration(
                        color: AppColor.appBlack,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          SvgPicture.asset(
                            AppIcon.milkIcon,
                            color: AppColor.appColor,
                            width: 30,
                          ),
                          Text(AppString.milkLabel, style: Styles.textColor14)
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: height * 0.01),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    color: AppColor.appBlack,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(AppString.roastedLabel, style: Styles.textColor14),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
