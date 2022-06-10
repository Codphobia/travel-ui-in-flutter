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
        Hero(
          tag: widget.city.imagePath,
          child: SizedBox(
            width: 360.w,
            height: 300.h,
            child: Image.asset(
              widget.city.imagePath,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
            top: 50.h,
            left: 15.w,
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const CircleAvatar(
                backgroundColor: kBackgroundColor,
                child: Icon(
                  Icons.arrow_back,
                  color: kButtonColor,
                ),
              ),
            )),
        Align(
          alignment: Alignment.bottomCenter,
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
              SizedBox(
                height: 5.h,
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return TicketContainer();
                  },
                ),
              ),
            ]),
          ),
        ),
      ]),
    );
  }
}
