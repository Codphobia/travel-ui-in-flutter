import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app_ui/data/colors.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      decoration: BoxDecoration(
          color: kGreayButtonColor.withOpacity(0.3),
          borderRadius: BorderRadius.circular(10.r)),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: TextField(
          cursorColor: Colors.black12,
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: ' Search ',
              suffixIcon: Icon(
                Icons.menu_open_sharp,
                color: kGreayIconColor,
              )),
        ),
      ),
    );
  }
}
