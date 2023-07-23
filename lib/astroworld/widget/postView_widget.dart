// ignore_for_file: file_names

import 'package:astrtwig/assets.dart';
import 'package:astrtwig/colors.dart';
import 'package:astrtwig/gaps.dart';
import 'package:astrtwig/like_button.dart';
import 'package:astrtwig/reusable_buttons.dart';
import 'package:astrtwig/astroworld/view/pages/comments/comments.dart';
import 'package:astrtwig/astroworld/widget/share_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ic.dart';
import 'package:iconify_flutter/icons/ph.dart';
import 'package:iconify_flutter/icons/majesticons.dart';
import 'package:astrtwig/astroworld/view/profile/view/profile.dart';

class PostView1 extends StatelessWidget {
  final String userId;
  final String image;
  final String images;
  final String username;
  final String datetime;
  final String listens;
  final String caption;

  const PostView1(
      {super.key,
        required this.userId,
      required this.image,
      required this.images,
      required this.username,
      required this.datetime,
      required this.listens,
      required this.caption});

  void postProfile(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
        ProfilePage.routeName,
        arguments: userId,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 354.w,
      height: 450.39.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            leading:
                InkWell(
                  onTap: () => postProfile(context),
                  child: CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 25.r,
                    backgroundImage: AssetImage(images),
          ),
      )
            ,
            title: InkWell(
              onTap: () {},
                child: Text(
                  username,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).brightness == Brightness.dark
                        ? Colors.white
                        : purple100,
                  ),
                ),
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: Iconify(
                  Ic.outline_more_vert,
                  color: Theme.of(context).brightness == Brightness.dark
                      ? Colors.white
                      : purple100,
                )),
          ),
          gapH8,
          SizedBox(
            height: 281.h,
            width: 354.w,
            child: Stack(
              children: [
                Material(
                  elevation: 2,
                  borderRadius: BorderRadius.circular(25.r),
                  child: Container(
                    height: 281.h,
                    width: 354.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.r),
                        image: DecorationImage(
                          image: AssetImage(image),
                          fit: BoxFit.fill,
                        )),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 135,
                  right: 112,
                  child: Material(
                    elevation: 1,
                    borderRadius: BorderRadius.circular(21),
                    child: Container(
                      width: 116.29.w,
                      height: 42.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(21),
                        color: Theme.of(context).brightness == Brightness.dark
                            ? purple60
                            : Colors.white,
                        border: Border.all(
                          color: const Color.fromRGBO(255, 255, 255, 1),
                          width: 0.9230769276618958,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            LikeButton(
                              isLiked: false,
                              onTap: () {},
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const Comments()));
                              },
                              child: Iconify(
                                Majesticons.message_line,
                                color: Theme.of(context).brightness ==
                                        Brightness.dark
                                    ? Colors.white
                                    : purple100,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                showModalBottomSheet(
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20.0),
                                      topRight: Radius.circular(20.0),
                                    ),
                                  ),
                                  context: context,
                                  builder: (BuildContext context) {
                                    return const BottomModalSheet();
                                  },
                                );
                              },
                              child: Iconify(
                                Ph.share_network_duotone,
                                color: Theme.of(context).brightness ==
                                        Brightness.dark
                                    ? Colors.white
                                    : purple100,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          gapH18,
          //listeners value
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              '1,566 listens',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Theme.of(context).brightness == Brightness.dark
                    ? Colors.white
                    : const Color.fromRGBO(0, 0, 0, 0.5),
                fontFamily: 'Aileron',
                fontSize: 10,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          //caption
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Feeling good today😃..can you check my portfolio? https://dribbble.com/jonathanschubert',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Theme.of(context).brightness == Brightness.dark
                    ? Colors.white
                    : const Color.fromRGBO(55, 26, 69, 1),
                fontFamily: 'Aileron',
                fontSize: 12,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          //comment value
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'View 112 comments',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Theme.of(context).brightness == Brightness.dark
                    ? Colors.white
                    : const Color.fromRGBO(55, 26, 69, 1),
                fontFamily: 'Aileron',
                fontSize: 10,
                fontWeight: FontWeight.normal,
              ),
            ),
          )
        ],
      ),
    );
  }
}

//bottom sheets

class BottomModalSheet extends StatelessWidget {
  const BottomModalSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: double.infin
      height: 197.w,
      decoration: BoxDecoration(
        color: Theme.of(context).brightness == Brightness.dark
            ? Colors.black
            : Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          gapH8,
          Text(
            'Share',
            style: TextStyle(
              color: Theme.of(context).brightness == Brightness.dark
                  ? Colors.white
                  : const Color.fromRGBO(55, 26, 69, 1),
              fontFamily: 'Aileron',
              fontSize: 12,
              fontWeight: FontWeight.normal,
            ),
          ),
          gapH12,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 20,),
                margin: EdgeInsets.only(bottom: 20),
                child: Row(
                  children: [
                    SocialBox(
                      image: Assets.copylink,
                      text: 'Copy Link',
                    ),
                    SocialBox(
                      image: Assets.wa,
                      text: 'Whatsapp',
                    ),
                    SocialBox(
                      image: Assets.fb,
                      text: 'Facebook',
                    ),
                    SocialBox(
                      image: Assets.ig,
                      text: 'Instagram',
                    ),
                    SocialBox(
                      image: Assets.tw,
                      text: 'Twitter',
                    ),
                  ],
                ),
              )
            ],
          ),
          gapH12,
          KolorButton(
            width: 327,
            color: purple100,
            text: "Cancel",
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
