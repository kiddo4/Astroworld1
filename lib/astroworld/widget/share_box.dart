// import 'package:astro_application/src/core/constants/gaps.dart';
import 'package:astrtwig/gaps.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class SocialBox extends StatelessWidget {
  final String image;
  final String text;
  const SocialBox({super.key, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: SizedBox(
          height: 52.sp,
          width: 50.sp,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  image,
                ),
                gapH8,
                Text(text,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 6.8.sp,
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black,
                    ))
              ],
            ),
          )),
    );
  }
}
