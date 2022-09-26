import 'package:coffee_finder/constants/app_icon.dart';
import 'package:coffee_finder/feature/coffee_cart/coffee_cart.dart';
import 'package:coffee_finder/feature/coffee_favourite/coffee_favourite.dart';
import 'package:coffee_finder/feature/coffee_home/coffee_home.dart';
import 'package:coffee_finder/feature/coffee_notification/coffee_notification.dart';
import 'package:coffee_finder/feature/coffee_tab/pod/coffee_tab_pod.dart';
import 'package:coffee_finder/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

class CoffeeTab extends ConsumerStatefulWidget {
  const CoffeeTab({Key? key}) : super(key: key);
  @override
  ConsumerState<CoffeeTab> createState() => _ConsumerState();
}

class _ConsumerState extends ConsumerState<CoffeeTab> {
  final tabItems = <Widget>[
    const CoffeeHome(),
    const CoffeeCart(),
    const CoffeeFavourite(),
    const CoffeeNotification(),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final tabIndex = ref.watch(coffeeTabProvider);
        return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(AppIcon.homeIcon, color: AppColor.greyColor),
                  ),
                  activeIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(AppIcon.homeIcon, color: AppColor.appColor),
                  ),
                  label: '',
                  tooltip: 'Coffee Home'),
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(AppIcon.bagIcon, color: AppColor.greyColor),
                  ),
                  activeIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(AppIcon.bagIcon, color: AppColor.appColor),
                  ),
                  label: '',
                  tooltip: 'Coffee Cart'),
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(AppIcon.heartIcon, color: AppColor.greyColor),
                  ),
                  activeIcon: SvgPicture.asset(AppIcon.heartIcon, color: AppColor.appColor),
                  label: '',
                  tooltip: 'Coffee Favorite'),
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(AppIcon.bellIcon, color: AppColor.greyColor),
                  ),
                  activeIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(AppIcon.bellIcon, color: AppColor.appColor),
                  ),
                  label: '',
                  tooltip: 'Coffee Notification'),
            ],
            currentIndex: tabIndex,
            onTap: (int index) {
              ref.read(coffeeTabProvider.notifier).toggleCoffeeTab(index);
            },
          ),
          body: tabItems.elementAt(tabIndex),
        );
      },
    );
  }
}
