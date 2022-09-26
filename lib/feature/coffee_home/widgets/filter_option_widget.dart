import 'package:coffee_finder/feature/coffee_home/model/coffee_model.dart';
import 'package:coffee_finder/feature/coffee_home/pod/category_pod.dart';
import 'package:coffee_finder/feature/coffee_home/pod/filter_option_pod.dart';
import 'package:coffee_finder/theme/app_color.dart';
import 'package:coffee_finder/theme/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shimmer/shimmer.dart';

// ignore: must_be_immutable
class FilterOptionWidget extends StatelessWidget {
  const FilterOptionWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    return Consumer(
      builder: (context, ref, child) {
        int selected = ref.watch(coffeeOptionProvider);
        AsyncValue<List<CoffeeTypeModel>> category = ref.watch(coffeeCategoryProvider);
        return category.when(
          loading: () => _textLoaderWidget(context),
          error: (err, stack) => Text('Error: $err'),
          data: (itemList) {
            return SizedBox(
              height: height * 0.06,
              child: ListView.builder(
                itemCount: itemList.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      ref.watch(coffeeOptionProvider.notifier).coffeeFilterOptionToggle(index);
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                      child: Column(
                        children: [
                          Text(
                            itemList[index].name,
                            style: index == selected ? Styles.boldColor22 : Styles.bold22,
                          ),
                          SizedBox(height: height * 0.01),
                          Visibility(
                            visible: index == selected,
                            child: Container(
                              height: 8,
                              width: 8,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: AppColor.appColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            );
          },
        );
      },
    );
  }

  Widget _textLoaderWidget(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.height;
    return SizedBox(
      height: height * 0.06,
      child: Shimmer.fromColors(
        baseColor: AppColor.lightBlackColor,
        highlightColor: AppColor.blueColor,
        enabled: true,
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  Container(
                    width: width * 0.2,
                    color: AppColor.greyColor,
                    child: const Text(''),
                  ),
                  SizedBox(height: height * 0.01),
                  Visibility(
                    visible: index == 0,
                    child: Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: AppColor.greyColor,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
