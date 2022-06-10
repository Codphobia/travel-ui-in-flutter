import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:travel_app_ui/component/custom_chip_widget.dart';
import 'package:travel_app_ui/component/custom_city_widget.dart';
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
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(children: [
              Expanded(
                  flex: 9,
                  child: Text(
                    'Where would you like to travel.?',
                    style: kBlackHeadingTextStyle,
                  )),
              Expanded(
                  flex: 1,
                  child: CircleAvatar(
                    radius: 17.r,
                    backgroundImage: const NetworkImage(
                        'https://avatars.githubusercontent.com/u/83277996?v=4'),
                  )),
            ]),
            SizedBox(
              height: 2.h,
            ),
            const CustomSearchBar(),
            SizedBox(height: 50.h, width: 350.w, child: const MyChipWidget()),
            Expanded(
              child: GridView.custom(
                gridDelegate: SliverWovenGridDelegate.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 3,
                  crossAxisSpacing: 3,
                  pattern: [
                    const WovenGridTile(0.7),
                    const WovenGridTile(
                      4 / 5,
                    ),
                  ],
                ),
                childrenDelegate: SliverChildBuilderDelegate(
                    childCount: citiesList.length,
                    (context, index) => CityWidget(
                          city: citiesList[index],
                        )),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
