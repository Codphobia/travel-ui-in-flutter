import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:travel_app_ui/data/colors.dart';
import 'package:travel_app_ui/data/typograpy.dart';

class TicketContainer extends StatelessWidget {
  const TicketContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 180.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
            color: kBackgroundwithOpcityColor.withOpacity(0.1),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 8.h,
              horizontal: 17.w,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.rounded_corner_outlined,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          "New York",
                          style: kBlackHeadingForTicketTextTextStyle,
                        ),
                      ],
                    ),
                    const CustomDottedline(),
                    Column(
                      children: [
                        const Icon(
                          Icons.place_outlined,
                          color: Colors.pinkAccent,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          "12H",
                        ),
                      ],
                    ),
                    const CustomDottedline(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Icon(Icons.add_box),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          "Great Britian",
                          style: kBlackHeadingForTicketTextTextStyle,
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    Text(
                      "10:40am",
                    ),
                    const Spacer(),
                    Text(
                      "12:40pm",
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    Text(
                      "4.26.2021,Tue",
                    ),
                    const Spacer(),
                    Text(
                      "4.27.2021,Wed",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 70.h,
          decoration: BoxDecoration(
            color: kBackgroundwithOpcityColor.withOpacity(0.1),
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 23.w,
                ),
                child: const CustomDottedline(),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 20.h,
                  horizontal: 10.w,
                ),
                child: Row(
                  children: [
                    const Icon(Icons.air),
                    Text(
                      "American Airlines",
                      style: kBlackHeadingForTicketTextTextStyle,
                    ),
                    const Spacer(),
                    Text(
                      "Rs120",
                      style: kBlackHeadingForTicketTextTextStyle,
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

class CustomDottedline extends StatelessWidget {
  const CustomDottedline({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DottedLine(
        direction: Axis.horizontal,
        lineThickness: 1.0,
        lineLength: double.infinity,
        dashLength: 4.0,
        dashColor: Colors.black87,
        dashRadius: 0.0,
        dashGapLength: 4.0,
        dashGapColor: Colors.transparent,
        dashGapRadius: 0.0,
      ),
    );
  }
}
