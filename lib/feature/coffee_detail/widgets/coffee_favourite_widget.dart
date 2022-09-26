import 'package:coffee_finder/constants/app_icon.dart';
import 'package:coffee_finder/feature/coffee_detail/pod/favourite_pod.dart';
import 'package:coffee_finder/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CoffeeFavouriteWidget extends StatelessWidget {
  const CoffeeFavouriteWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    return Consumer(
      builder: (context, ref, child) {
        bool toggleFavourite = ref.watch(coffeeFavouriteProvider);
        return Container(
          height: height * 0.5,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
            image: DecorationImage(
              image: AssetImage(AppIcon.coffeeIcon1),
              fit: BoxFit.cover,
            ),
          ),
          child: Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  SizedBox(height: height * 0.04),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          shape: const CircleBorder(),
                          padding: const EdgeInsets.all(10),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.chevron_left, color: AppColor.lightGreyColor),
                      ),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          shape: const CircleBorder(),
                          padding: const EdgeInsets.all(10),
                        ),
                        onPressed: () {
                          ref.watch(coffeeFavouriteProvider.notifier).favouriteToggle();
                        },
                        child: SvgPicture.asset(
                          AppIcon.heartIcon,
                          color: toggleFavourite ? AppColor.appColor : AppColor.lightGreyColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
