import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TransparentButton extends StatelessWidget {
  final String? text;
  final double? width;
  final Color color;
  final void Function()? onPressed;
  final bool isLoading;
  const TransparentButton(
      {this.text,
      this.onPressed,
      this.width,
      this.isLoading = false,
      required this.color,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed!,
      height: 40.h,
      minWidth: width!,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
          side: BorderSide(
            color: color,
          )),
      child: Text(
        text!,
        style: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
          fontFamily: 'Aileron',
          color: color,
        ),
      ),
    );
  }
}

class ColorButton extends StatelessWidget {
  final String? text;
  final Color? color;
  final double? width;
  final void Function()? onPressed;
  final bool isLoading;
  const ColorButton(
      {Key? key,
      this.width,
      this.color,
      this.text,
      this.onPressed,
      this.isLoading = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed!,
      minWidth: width!,
      color: color,
      height: 40.h,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: Text(
        text!,
        style: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
          fontFamily: 'Aileron',
          color: Colors.black,
        ),
      ),
    );
  }
}

class KolorButton2 extends StatelessWidget {
  final String? text;
  final Color? color;
  final double? width;
  final void Function()? onPressed;
  final bool isLoading;
  const KolorButton2(
      {Key? key,
      this.width,
      this.color,
      this.text,
      this.onPressed,
      this.isLoading = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed!,
      minWidth: width!,
      color: color,
      height: 18.h,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: Text(
        text!,
        style: TextStyle(
          fontSize: 9.5.sp,
          fontWeight: FontWeight.w600,
          fontFamily: 'Aileron',
          color: Colors.white,
        ),
      ),
    );
  }
}

class KolorButton extends StatelessWidget {
  final String? text;
  final Color? color;
  final double? width;
  final void Function()? onPressed;
  final bool isLoading;
  const KolorButton(
      {Key? key,
      this.width,
      this.color,
      this.text,
      this.onPressed,
      this.isLoading = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed!,
      minWidth: width!,
      color: color,
      height: 46.h,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: Text(
        text!,
        style: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
          fontFamily: 'Aileron',
          color: Colors.white,
        ),
      ),
    );
  }
}

class WhiteButton extends StatelessWidget {
  final String? text;
  final double? width;

  final void Function()? onPressed;
  final bool isLoading;
  const WhiteButton(
      {this.text, this.onPressed, this.width, this.isLoading = false, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed!,
      height: 40.h,
      minWidth: width!,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
          side: const BorderSide(
            color: Colors.white,
          )),
      child: Text(
        text!,
        style: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
          fontFamily: 'Aileron',
          color: Colors.indigo,
        ),
      ),
    );
  }
}

class SmallIconButton extends StatelessWidget {
  final Icon icon;
  final Color color;
  final Color highcolor;
  final double? width;
  final double? height;
  final Function()? onPressed;

  const SmallIconButton(
      {Key? key,
      this.width,
      required this.icon,
      this.onPressed,
      this.height,
      required this.color,
      required this.highcolor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      width: 40.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: highcolor,
      ),
      child: IconButton(
        icon: icon,
        color: color,
        highlightColor: highcolor,
        onPressed: onPressed!,
        iconSize: 21.5,

        //disabledColor: AppColors.grey20,
      ),
    );
  }
}
