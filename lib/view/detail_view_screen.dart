import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app_ui/component/Custom_button_widget.dart';
import 'package:travel_app_ui/component/custom_ticket_widget.dart';
import 'package:travel_app_ui/data/colors.dart';
import 'package:travel_app_ui/data/typograpy.dart';
import 'package:travel_app_ui/model/cities.dart';

class DetailViewPage extends StatefulWidget {
  final Cities city;
  const DetailViewPage({Key? key, required this.city}) : super(key: key);

  @override
  State<DetailViewPage> createState() => _DetailViewPageState();
}

class _DetailViewPageState extends State<DetailViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            width: 360.w,
            height: 530.h,
            child: Image.asset(
              widget.city.imagePath,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: ClipRRect(
            child: Container(
              padding: const EdgeInsets.all(6),
              width: 360.w,
              height: 450.h,
              decoration: BoxDecoration(
                  color: kBackgroundColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.r),
                      topRight: Radius.circular(40.r))),
              child: Column(children: [
                SizedBox(
                  height: 5.h,
                ),
                SizedBox(
                  height: 50.h,
                  width: 220.w,
                  child: const MyButtonWidget(),
                ),
                SizedBox(
                  height: 5.h,
                ),
                SizedBox(
                  height: 30.h,
                  width: 220.w,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      '2 Ticket',
                      style: kBlackHeadingForTicketTextStyle,
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
              width: 360.w,
              height: 350.h,
              child: ListView.builder(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemCount: 2,
                itemBuilder: (context, index) {
                  return TicketContainer();
                },
              )),
        ),
      ]),
    );
  }
}
