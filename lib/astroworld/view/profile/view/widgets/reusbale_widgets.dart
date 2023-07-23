// import 'package:astro_application/src/core/constants/assets.dart';
// import 'package:astro_application/src/core/constants/colors.dart';
import 'package:astrtwig/colors.dart';
import 'package:astrtwig/assets.dart';
import 'package:flutter/material.dart';

//this widget displays the users profile image
class ProfileCircle extends StatelessWidget {
  final String image;
  const ProfileCircle({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.orange),
        borderRadius: const BorderRadius.all(Radius.circular(103.5)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 132.3,
          width: 132.3,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.orange),
            borderRadius: const BorderRadius.all(Radius.circular(94.5)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200,
              width: 200,
              // ignore: prefer_const_constructors
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(image)),
                // border: Border.all(color: Colors.orange),
                borderRadius: const BorderRadius.all(
                  Radius.circular(85.5),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

//this widget displays the users profile image in a smaller size
class ProfileCircle1 extends StatelessWidget {
  const ProfileCircle1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 83,
      width: 83,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.orange),
        borderRadius: const BorderRadius.all(Radius.circular(103.5)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 75,
          width: 75,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.orange),
            borderRadius: const BorderRadius.all(Radius.circular(94.5)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 69,
              width: 68,
              // ignore: prefer_const_constructors
              decoration: BoxDecoration(
                image: const DecorationImage(image: AssetImage(Assets.pfp)),
                // border: Border.all(color: Colors.orange),
                borderRadius: const BorderRadius.all(
                  Radius.circular(85.5),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

//this widget is where users data will be displayed
class UserBio extends StatelessWidget {
  final String username;

  const UserBio({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Text(
      username,
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w700,
          color: Theme.of(context).brightness == Brightness.dark
              ? Colors.white
              : mTextColor3,
        ),
       );
  }
}

class FollowingDetails extends StatelessWidget {
  const FollowingDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        width: double.infinity,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              SizedBox(
                height: 41,
                width: 79.68,
                child: Text.rich(TextSpan(
                    text: '6,756',
                    //textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : mTextColor3,
                    ),
                    children: [
                      TextSpan(
                        text: '\nFollowers',
                        //textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : mTextColor3,
                        ),
                      )
                    ])),
              ),
              const SizedBox(width: 10),
              Center(
                child: Container(
                  height: 108,
                  width: 136,
                  // ignore: prefer_const_constructors
                  decoration: BoxDecoration(
                    border: Border.all(color: mTextColor),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(24),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      height: 96,
                      width: 120,
                      padding: EdgeInsets.all(7.0),
                      decoration: BoxDecoration(
                        color: purple100,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(24),
                        ),
                      ),
                      child: const Center(
                        child: Column(
                          children: [
                            Text(
                                '78',
                                //textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 32,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                            ),
                            Text(
                               'Listening score',
                              //textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            )

                          ],
                        ),
                      )

                      ),
                    ),
                  ),
                ),
              const SizedBox(width: 10),
              SizedBox(
                height: 50,
                width: 79.68,
                child: Center(
                  child: Column(
                    children: [
                      Text(
                          '67',
                          //textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).brightness == Brightness.dark
                                ? Colors.white
                                : mTextColor3,
                          ),
                      ),
                            Text(
                              'Following',
                              //textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Theme.of(context).brightness == Brightness.dark
                                    ? Colors.white
                                    : mTextColor3,
                              ),
                            ),
                          ]
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class followBlockBtn extends StatelessWidget {
  const followBlockBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              height: 48,
              width: 150,
              padding: EdgeInsets.only(
                top: 12,
                bottom: 12,
                left: 50,
                right: 50,
              ),
            decoration: BoxDecoration(
              color: Theme.of(context).brightness == Brightness.dark
                  ? Colors.white
                  : mTextColor3,
              borderRadius: BorderRadius.circular(25)
            ),
            child: Center(
              child: Text(
                  "Follow",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  )
              ),
            )
          ),
          Container(
              height: 48,
              width: 150,
              padding: EdgeInsets.only(
                top: 12,
                bottom: 12,
                left: 50,
                right: 50,
              ),
              decoration: BoxDecoration(
                  // color: Theme.of(context).brightness == Brightness.dark
                  //     ? Colors.white
                  //     : mTextColor3,
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: Colors.redAccent)
              ),
              child: Center(
                child: Text(
                    "Block",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.red,
                    )
                ),
              )
          )
        ],
      );
  }
}

