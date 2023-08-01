import 'package:flutter/material.dart';
import 'package:astrtwig/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CommentForm extends StatelessWidget {
  const CommentForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50.h,
      decoration: BoxDecoration(
          color: Theme.of(context).brightness == Brightness.dark
              ? mGreyColor
              : Colors.white,
          border: Border.all(
            color: mBoxColor,
          ),
          borderRadius: BorderRadius.circular(15)),
      child: Center(
        child: TextField(
          style: const TextStyle(
            color: Colors.black,
          ),
          textInputAction: TextInputAction.send,
          decoration: InputDecoration(
              suffixIcon: GestureDetector(
                onTap: (){},
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: purple80,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    Positioned(
                      child: Icon(Icons.send_rounded, color: Colors.white, weight: 1, size: 20),
                      // top: 2,
                      // bottom: 4,
                      // right: 2,
                      // left: 3,
                    )

                  ],
                )
              ),
              hintText: 'Add a comment.... ',
              hintStyle: TextStyle(color: Theme.of(context).brightness == Brightness.dark
                  ? purple80
                  : mGreyColor,
              ),
              border: InputBorder.none),
        ),
      ),
    );
  }
}
