import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:travel_app_ui/data/colors.dart';
import 'package:travel_app_ui/data/typograpy.dart';

import '../model/cities.dart';
import '../view/detail_view_screen.dart';

class CityWidget extends StatelessWidget {
  final Cities city;
  const CityWidget({Key? key, required this.city}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(
          () => DetailViewPage(
            city: city,
          ),
          transition: Transition.downToUp,
        );
      },
      child: Hero(
        tag: city.imagePath,
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    city.imagePath,
                  ),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(25.r)),
          child: Column(
            children: [
              Spacer(),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                Text(
                  city.cityName,
                  style: kHeadingforButtonTextStyle,
                ),
                Container(
                  width: 40.w,
                  height: 25.h,
                  decoration: BoxDecoration(
                      color: kBackgroundColor,
                      borderRadius: BorderRadius.circular(20.r)),
                  child: Center(
                    child: Text(
                      '\$ ${city.priceDollars.toString()}',
                      style: kBlackHeadingForButtonTextStyle,
                    ),
                  ),
                )
              ]),
              SizedBox(
                height: 15.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
