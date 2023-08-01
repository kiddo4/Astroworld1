import 'package:flutter/material.dart';
import 'package:astrtwig/assets.dart';
import 'package:astrtwig/gaps.dart';
import 'package:astrtwig/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:astrtwig/like_button.dart';

class usersComments extends StatefulWidget {
  final String profilePic;
  final String username;
  final String comment;
  final String timeCommented;

  usersComments({
    super.key,
    required this.username,
    required this.comment,
    required this.profilePic,
    required this.timeCommented
  });

  @override
  State<usersComments> createState() => _usersCommentsState();
}

class _usersCommentsState extends State<usersComments> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // decoration: BoxDecoration(
      //   color: purple20,
      //   borderRadius: BorderRadius.circular(15)
      // ),
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
            backgroundColor: Colors.grey,
            radius: 20.r,
            backgroundImage: AssetImage(widget.profilePic),
          ),
            title: Text.rich(
              TextSpan(
                text: widget.username,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  color: Theme.of(context).brightness == Brightness.dark
                      ? Colors.white
                      : purple100,
                ),
                children: [
                  WidgetSpan(child: SizedBox(width: 4,)),
                  TextSpan(
                    text: widget.comment,
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w100,
                      // fontStyle: FontS,
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : purple100,
                    ),
                  ),
                ]
              ),
            ),
            trailing: Text(
              widget.timeCommented,
              style: TextStyle(
                fontSize: 9,
                fontWeight: FontWeight.w100,
                // fontStyle: FontStyle.light,
                color: Theme.of(context).brightness == Brightness.dark
                    ? Colors.white
                    : purple100,
              ),
            ),
    ),
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 75,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LikeButton(
                      isLiked: false,
                      onTap: () {},
                    ),
                    SizedBox(width: 3,),
                    Text(
                        '80',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.normal,
                        color: Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : purple100,
                      ),
                    )
                  ],
                ),
                SizedBox(width: 20,),
                Text(
                    'Reply',
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.normal,
                    color: Theme.of(context).brightness == Brightness.dark
                        ? Colors.white
                        : purple100,
                  ),
                )
              ],
            ),
          ),
        ],
      )
    );
  }
}
