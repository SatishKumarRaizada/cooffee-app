import 'package:coffee_finder/constants/app_icon.dart';
import 'package:coffee_finder/constants/app_string.dart';
import 'package:coffee_finder/feature/coffee_home/model/coffee_model.dart';
import 'package:coffee_finder/feature/coffee_home/pod/category_pod.dart';
import 'package:coffee_finder/theme/app_color.dart';
import 'package:coffee_finder/theme/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shimmer/shimmer.dart';

class CoffeeCategoryWidget extends StatelessWidget {
  final Function onTap;
  const CoffeeCategoryWidget({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        AsyncValue<List<CoffeeTypeModel>> category = ref.watch(coffeeCategoryProvider);
        return category.when(
          loading: () => _loaderCradWidget(context),
          error: (err, stack) => Text('Error: $err'),
          data: (itemList) {
            return _coffeeCardWidget(context, itemList);
          },
        );
      },
    );
  }

  Widget _loaderCradWidget(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    return SizedBox(
      height: height * 0.35,
      child: Shimmer.fromColors(
        baseColor: AppColor.lightBlackColor,
        highlightColor: AppColor.blueColor,
        child: ListView.builder(
          itemCount: 2,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Row(
              children: [
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            alignment: Alignment.topRight,
                            children: [
                              Container(
                                width: 180,
                                height: 180,
                                decoration: BoxDecoration(
                                  color: AppColor.blueColor,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  color: AppColor.greyColor,
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                  ),
                                ),
                                child: Container(
                                  height: height * 0.02,
                                  width: width * 0.1,
                                  decoration: BoxDecoration(
                                    color: AppColor.blueColor,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: height * 0.01),
                          Container(
                            height: height * 0.02,
                            width: width * 0.1,
                            decoration: BoxDecoration(
                              color: AppColor.blueColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          SizedBox(height: height * 0.005),
                          Container(
                            height: height * 0.02,
                            width: width * 0.1,
                            decoration: BoxDecoration(
                              color: AppColor.blueColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          SizedBox(height: height * 0.01),
                          Container(
                            height: height * 0.02,
                            width: width * 0.1,
                            decoration: BoxDecoration(
                              color: AppColor.blueColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: width * 0.02)
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _coffeeCardWidget(BuildContext context, List<CoffeeTypeModel> itemList) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    return SizedBox(
      height: height * 0.35,
      child: ListView.builder(
        itemCount: itemList.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Row(
            children: [
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          alignment: Alignment.topRight,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/images/coffee${index + 1}.jpg',
                                width: 180,
                                height: 180,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                color: AppColor.greyColor,
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                ),
                              ),
                              child: Row(children: [
                                SvgPicture.asset(
                                  AppIcon.starIcon,
                                  width: 20,
                                  color: AppColor.appColor,
                                ),
                                SizedBox(width: width * 0.005),
                                Text(itemList[index].rating, style: Styles.bold14)
                              ]),
                            ),
                          ],
                        ),
                        SizedBox(height: height * 0.01),
                        Text(itemList[index].name, style: Styles.text20),
                        SizedBox(height: height * 0.005),
                        Text(AppString.oakMilkLabel, style: Styles.textColor14),
                        SizedBox(height: height * 0.01),
                        Row(
                          children: [
                            Text(itemList[index].price, style: Styles.boldColor22),
                            SizedBox(width: width * 0.05),
                            TextButton(
                              onPressed: () {},
                              child: const Icon(Icons.add),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width: width * 0.02)
            ],
          );
        },
      ),
    );
  }
}
