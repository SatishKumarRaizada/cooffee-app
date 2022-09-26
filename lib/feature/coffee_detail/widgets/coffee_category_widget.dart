import 'package:coffee_finder/constants/app_icon.dart';
import 'package:coffee_finder/constants/app_string.dart';
import 'package:coffee_finder/theme/app_color.dart';
import 'package:coffee_finder/theme/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CoffeeCategoryWidget extends StatelessWidget {
  final Function onTap;
  const CoffeeCategoryWidget({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final filterList = [
      AppString.capppiccinoLabel,
      AppString.espressoLabel,
      AppString.latteLabel,
    ];
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    return SizedBox(
      height: height * 0.35,
      child: ListView.builder(
        itemCount: filterList.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              onTap();
            },
            child: Card(
              elevation: 0.2,
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
                            const Text('4.5', style: Styles.bold14)
                          ]),
                        ),
                      ],
                    ),
                    SizedBox(height: height * 0.01),
                    const Text(AppString.capppiccinoLabel, style: Styles.text20),
                    SizedBox(height: height * 0.005),
                    Text(AppString.oakMilkLabel, style: Styles.textColor14),
                    SizedBox(height: height * 0.01),
                    Row(
                      children: [
                        Text('\$4.20', style: Styles.boldColor22),
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
          );
        },
      ),
    );
  }
}
