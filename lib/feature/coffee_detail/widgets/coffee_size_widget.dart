import 'package:coffee_finder/feature/coffee_detail/pod/detail_size_pod.dart';
import 'package:coffee_finder/theme/app_color.dart';
import 'package:coffee_finder/theme/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CoffeeSizeWidget extends StatelessWidget {
  final sizeList = ['S', 'M', 'L'];
  CoffeeSizeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;

    return Consumer(
      builder: (context, ref, child) {
        int sizeIndex = ref.watch(coffeeSizeProvider);
        return SizedBox(
          height: height * 0.04,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: sizeList.length,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(right: 20),
                child: InkWell(
                  borderRadius: BorderRadius.circular(10),
                  onTap: () {
                    ref.watch(coffeeSizeProvider.notifier).coffeeSizeProvider(index);
                  },
                  child: Container(
                    width: width * 0.2,
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: index == sizeIndex ? AppColor.appColor : AppColor.lightGreyColor,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        sizeList[index],
                        style: index == sizeIndex ? Styles.textAppColor18 : Styles.textColor18,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
