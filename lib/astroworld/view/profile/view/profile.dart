// ignore_for_file: must_be_immutable
import 'package:astrtwig/astroicons.dart';
import 'package:astrtwig/colors.dart';
import 'package:astrtwig/astroworld/view/profile/view/widgets/reusbale_widgets.dart';
import 'package:astrtwig/astroworld/view/profile/barrel/pages_barrel.dart';
import 'package:astrtwig/astroworld/model/productview_nodel.dart';
// import 'package:astro_application/assets/astroicons.dart';
// import 'package:astro_application/src/core/constants/colors.dart';
// import 'package:astro_application/src/features/main/profile/barrel/pages_barrel.dart';
//
// import 'package:astro_application/src/features/main/profile/view/widgets/reusbale_widgets.dart';
// import 'package:astro_application/src/core/ui/text/text_style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:astrtwig/text_style.dart';
// import '../../../../core/ui/text/text_style.dart';

class ProfilePage extends StatelessWidget {
  static const routeName = '/post-user';
  List<Page> pages = [
    Page(
        userId: 'user2',
        pagename: 'Message',
        icon: Icon(
          Icons.message,
          color: purple100,
        )),
    Page(
        userId: 'user1',
        pagename: 'Sphere',
        icon: Icon(
          Astr0icons.vector_6,
          color: purple100,
        )),
    Page(
        userId: 'user2',
        pagename: 'Astroworld',
        icon: Icon(
          Astr0icons.fa6_solid_user_astronaut,
          color: purple100,
        )),
  ];

  List<Widget> route = [
    const SpherePage(),
    const AstroWorld(),
  ];

  ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final userId = ModalRoute.of(context)!.settings.arguments as String;
    final postUser = posts.firstWhere((post) => post.userId == userId);
    return SafeArea(
        child: Scaffold(
      extendBody: true,
      body: Column(children: [
        Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Center(child: ProfileCircle(image: postUser.images,)),
            Padding(padding: EdgeInsets.all(8.0), child: UserBio(username: postUser.username)),
            SizedBox(height: 20),
            Center(child: FollowingDetails()),
          ],
        ),
        const SizedBox(height: 28),
        Expanded(
          child: Container(
            height: 368,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
              color: Theme.of(context).brightness == Brightness.dark
                  ? Colors.black12
                  : mBoxColor,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  Expanded(child: buildListView()),
                  const SizedBox(height: 5),
                  followBlockBtn()
                ],
              ),
            ),
          ),
        ),
      ]),
    ));
  }

  //come back here to sort out the leading icon issues
  ListView buildListView() {
    return ListView.builder(
        itemCount: pages.length,
        itemBuilder: (context, index) {
          final page = pages[index];
          return ListTile(
            leading: page.icon,
            title: Text(
              page.pagename,
              style: GoogleFonts.kanit(
                textStyle: TextStyles.nrmlTxt,
                color: Theme.of(context).brightness == Brightness.dark
                    ? Colors.white
                    : Colors.black,
              ),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => route[index]));
            },
          );
        });
  }
}

class Page {
  final String userId;
  final String pagename;
  Widget icon;

  Page({required this.pagename, required this.icon, required this.userId});
}

