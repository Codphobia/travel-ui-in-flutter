import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:travel_app_ui/component/custom_chip_widget.dart';
import 'package:travel_app_ui/component/custom_search_bar_widget.dart';
import 'package:travel_app_ui/data/colors.dart';
import 'package:travel_app_ui/data/typograpy.dart';
import 'package:travel_app_ui/model/cities.dart';
import 'package:travel_app_ui/view/detail_view_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(children: [
        SizedBox(
          height: 217.h,
          child: Stack(children: [
            Positioned(
                top: 55.h,
                left: 36.w,
                child: SizedBox(
                  width: 170.w,
                  height: 100.h,
                  child: Text(
                    'Where would ',
                    style: kBlackHeadingTextStyle,
                  ),
                )),
            Positioned(
                top: 80.h,
                left: 36.w,
                child: SizedBox(
                  width: 250.w,
                  height: 100.h,
                  child: Text(
                    'you like to travel.?',
                    style: kBlackHeadingTextStyle,
                  ),
                )),
            Positioned(
                top: 50.h,
                right: 10.w,
                child: CircleAvatar(
                  radius: 17.r,
                  backgroundImage: const NetworkImage(
                      'https://avatars.githubusercontent.com/u/83277996?v=4'),
                )),
            Positioned(top: 115.h, left: 35.w, child: const CustomSearchBar()),
            Positioned(
                top: 180.h,
                left: 33.w,
                child: SizedBox(
                    width: 310.w, height: 50.h, child: const MyChipWidget())),
          ]),
        ),
        Expanded(
          child: GridView.custom(
            gridDelegate: SliverWovenGridDelegate.count(
              crossAxisCount: 2,
              mainAxisSpacing: 1,
              crossAxisSpacing: 1,
              pattern: [
                WovenGridTile(0.7),
                WovenGridTile(
                  4 / 5,
                ),
              ],
            ),
            childrenDelegate: SliverChildBuilderDelegate(
              (context, index) => GestureDetector(
                onTap: () {
                  Get.to(() => const DetailViewPage(),
                      transition: Transition.downToUp,
                      duration: const Duration(seconds: 2));
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  color: Colors.greenAccent,
                  child: Stack(children: []),
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
