import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:travel_app_ui/data/colors.dart';

import 'package:travel_app_ui/data/typograpy.dart';
import 'package:travel_app_ui/view/home_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Positioned.fill(
          child: Image.asset(
            'assets/stackimag.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          left: 25.w,
          bottom: 50.h,
          child: SizedBox(
            width: 170.w,
            height: 200.h,
            child: Text(
              'Travel With Comfort And Safety!',
              style: kHeadingTextStyle,
            ),
          ),
        ),
        Positioned(
          left: 20.w,
          bottom: 90.h,
          child: InkWell(
            onTap: () {
              Get.to(() => const HomePage(),
                  transition: Transition.leftToRight,
                  duration: const Duration(seconds: 1));
            },
            child: Container(
              width: 100.w,
              height: 50.h,
              padding: EdgeInsets.all(8.sp),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(26.r),
                color: kButtonColor,
              ),
              child: Center(
                child: Text(
                  'Sign up',
                  style: kButtonTextStyle,
                ),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
