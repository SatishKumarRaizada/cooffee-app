import 'package:coffee_finder/constants/app_icon.dart';
import 'package:coffee_finder/constants/app_string.dart';
import 'package:coffee_finder/feature/coffee_home/widgets/coffee_category_widget.dart';
import 'package:coffee_finder/feature/coffee_home/widgets/filter_option_widget.dart';
import 'package:coffee_finder/feature/coffee_home/widgets/special_widget.dart';
import 'package:coffee_finder/theme/app_color.dart';
import 'package:coffee_finder/theme/app_style.dart';
import 'package:coffee_finder/utils/routes/rooute_name.dart';
import 'package:coffee_finder/widgets/app_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CoffeeHome extends StatelessWidget {
  const CoffeeHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    return Scaffold(
      appBar: _appWidegt(context), //AppBar widget
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _findCoffeeWidget(),
              SizedBox(height: height * 0.04),
              _searchWidget(),
              SizedBox(height: height * 0.02),
              const FilterOptionWidget(),
              SizedBox(height: height * 0.01),
              CoffeeCategoryWidget(
                onTap: () async {
                  await Navigator.pushNamed(context, CoffeeRoute.coffeeDetail);
                },
              ),
              SizedBox(height: height * 0.02),
              SpecialWidget(
                onTap: () async {
                  await Navigator.pushNamed(context, CoffeeRoute.coffeeDetail);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _appWidegt(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return AppBar(
      leading: Container(
        padding: const EdgeInsets.all(12),
        child: SvgPicture.asset(AppIcon.menuIcon, color: AppColor.blueColor),
      ),
      actions: [_profileWidget(), SizedBox(width: width * 0.05)],
    );
  }

  Widget _profileWidget() {
    return Card(
      elevation: 1,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.asset(AppIcon.profileIcon, fit: BoxFit.fill),
      ),
    );
  }

  Widget _findCoffeeWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(AppString.findBestLabel, style: Styles.text22),
        Text(AppString.coffeeForYouLabel, style: Styles.text25),
      ],
    );
  }

  Widget _searchWidget() {
    return AppTextfield(
      hintText: AppString.searchHintLabel,
      prefixIcon: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: SvgPicture.asset(
          AppIcon.searchIcon,
          color: AppColor.greyColor,
          width: 20,
        ),
      ),
    );
  }
}
