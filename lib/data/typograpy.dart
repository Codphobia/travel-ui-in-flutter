import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app_ui/data/colors.dart';

TextStyle get kHeadingTextStyle => TextStyle(
    fontSize: ScreenUtil().setSp(25),
    color: kHeadingTextColor,
    fontWeight: kBoldFontWeight);
TextStyle get kBlackHeadingTextStyle => TextStyle(
    fontSize: ScreenUtil().setSp(25),
    color: kVBlackHeadingTextColor,
    fontWeight: kBoldFontWeight);
TextStyle get kNormalTextStyle =>
    TextStyle(fontSize: ScreenUtil().setSp(15), color: kGreayColor);
TextStyle get kChipForWhiteTextStyle =>
    TextStyle(fontSize: ScreenUtil().setSp(15), color: kTextWhiteColor);
TextStyle get kChipTextStyle =>
    TextStyle(fontSize: ScreenUtil().setSp(17), color: kTextColor);
TextStyle get kButtonTextStyle => TextStyle(
    fontSize: ScreenUtil().setSp(15),
    color: kButtonTextColor,
    fontWeight: kLightFontWeight);
TextStyle get kHeadingforButtonTextStyle => TextStyle(
    fontSize: ScreenUtil().setSp(15),
    color: kHeadingTextColor,
    fontWeight: kBoldFontWeight);
TextStyle get kBlackHeadingForButtonTextStyle => TextStyle(
    fontSize: ScreenUtil().setSp(14),
    color: kVBlackHeadingTextColor,
    fontWeight: kBoldFontWeight);
TextStyle get kBlackHeadingForTicketTextStyle => TextStyle(
    fontSize: ScreenUtil().setSp(25),
    color: kVBlackHeadingTextColor,
    fontWeight: kBoldFontWeight);
TextStyle get kBlackHeadingForTicketTextTextStyle =>
    TextStyle(fontSize: ScreenUtil().setSp(15), fontWeight: kBoldFontWeight);
// font weight
const FontWeight kBoldFontWeight = FontWeight.bold;
const FontWeight kRegularFontWeight = FontWeight.normal;
const FontWeight kLightFontWeight = FontWeight.w400;
const FontWeight kThinFontWeight = FontWeight.w100;
