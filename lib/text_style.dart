// ignore_for_file: constant_identifier_names
import 'package:astrtwig/colors.dart';
// import 'package:astro_application/src/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class TextStyles {
  //final Color? color;
  /// h6 | 400 | 900(bold) | 1.2
  static final TextStyle headline6 = TextStyle(
    fontSize: 24,
    height: 1.2,
    fontWeight: FontWeight.w900,
    color: purple100,
  );

  //header 3 (my astropod)
  static final TextStyle headline3 = TextStyle(
    fontSize: 14,
    height: 1.2,
    fontWeight: FontWeight.w700,
    color: purple100,
  );

  static final TextStyle tabline3 = TextStyle(
    fontSize: 14,
    height: 1.2,
    fontWeight: FontWeight.w700,
    color: purple40,
  );
  static const TextStyle headline = TextStyle(
    fontSize: 14,
    height: 1.2,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );

  static final TextStyle cardText = TextStyle(
    fontSize: 24,
    height: 1.2,
    fontWeight: FontWeight.w700,
    color: purple100,
  );

  ///subheading
  // ignore: prefer_const_constructors
  static final TextStyle headline2 = TextStyle(
      fontSize: 14,
      height: 1.208,
      fontWeight: FontWeight.w400,
      color: Colors.black);

  ///subheading2 (time)
  static final TextStyle headline4 = TextStyle(
    fontSize: 12,
    height: 1.208,
    fontWeight: FontWeight.w400,
    color: purple100,
  );

  static final TextStyle largHeaderText = TextStyle(
    fontSize: 16.sp,
    height: 1.208,
    fontWeight: FontWeight.w700,
  );

  //sub  text
  static final TextStyle subText = TextStyle(
    fontSize: 10.sp,
    height: 1.194,
    fontWeight: FontWeight.w600,
  );

  static final TextStyle details = TextStyle(
    fontSize: 7.sp,
    height: 1.194,
    fontWeight: FontWeight.w400,
  );

  static final TextStyle time = TextStyle(
    fontSize: 8.sp,
    height: 1.194,
    fontWeight: FontWeight.w300,
  );

  static final TextStyle subTitle = TextStyle(
    fontSize: 10.sp,
    height: 1.194,
    fontWeight: FontWeight.w400,
  );
  static final TextStyle butnTxt = TextStyle(
    fontSize: 18.sp,
    height: 1.194,
    fontWeight: FontWeight.w600,
  );

  static final TextStyle appBrTxt = TextStyle(
    fontSize: 20.sp,
    height: 1.194,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle h2 = TextStyle(
    fontSize: 14,
    height: 1.208,
    fontWeight: FontWeight.w400,
  );

  static final TextStyle nrmlTxt = TextStyle(
    fontSize: 16.sp,
    height: 1.194,
    fontWeight: FontWeight.w400,
  );

  static final TextStyle nrmlBldTxt = TextStyle(
    fontSize: 16.sp,
    height: 1.194,
    fontWeight: FontWeight.w700,
  );

  static final TextStyle hdrTxt = TextStyle(
    fontSize: 20.sp,
    height: 1.194,
    fontWeight: FontWeight.w600,
  );

//large bold text
  static final TextStyle largeButton = TextStyle(
    fontSize: 16.sp,
    height: 1.194,
    fontWeight: FontWeight.w600,
  );

  static final TextStyle largeText = TextStyle(
    fontSize: 14,
    height: 1.194,
    fontWeight: FontWeight.w600,
    color: purple100,
  );

  static const TextStyle PdCstTitle = TextStyle(
    fontSize: 15,
    height: 1.214,
    fontWeight: FontWeight.w600,
  );

  //Label Text
  static const TextStyle labelText = TextStyle(
    fontSize: 16,
    height: 1.188,
    fontWeight: FontWeight.w400,
  );

  //bold text
  static final TextStyle boldText = TextStyle(
    fontSize: 14,
    height: 1.214,
    fontWeight: FontWeight.w600,
    color: purple100,
  );
  //regularnormal
  // ignore: prefer_const_constructors
  static final TextStyle regText = TextStyle(
    fontSize: 14,
    height: 1.214,
    fontWeight: FontWeight.w300,
  );
//card text
  static const TextStyle rectangleCardText = TextStyle(
    fontSize: 10.24,
    height: 1.214,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle CardText = TextStyle(
    fontSize: 11.24,
    height: 1.214,
    fontWeight: FontWeight.w600,
  );

  ///regular text
  static final TextStyle regularText = TextStyle(
    fontSize: 12,
    height: 1.21,
    fontWeight: FontWeight.w400,
    color: regularTextColor,
  );
}
