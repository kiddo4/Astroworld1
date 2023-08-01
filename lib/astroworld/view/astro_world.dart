import 'package:astrtwig/colors.dart';
import '../model/productview_nodel.dart';
import 'package:astrtwig/astroworld/widget/postView_widget.dart';
import 'package:astrtwig/astroworld/model/stories_model.dart';
import '../widget/story_item.dart';
import 'package:astrtwig/assets.dart';
// import 'package:astro_application/src/features/main/Home/pages/chat/view/chat_user.dart';
// import 'package:iconify_flutter/iconify_flutter.dart';
// import 'package:iconify_flutter/icons/teenyicons.dart';
// import 'package:astro_application/src/features/main/Home/pages/notification/view/notification_page.dart';
import 'package:flutter/material.dart';

class AstroWorld extends StatefulWidget {
  const AstroWorld({super.key});

  @override
  State<AstroWorld> createState() => _AstroWorldState();
}

class _AstroWorldState extends State<AstroWorld> {
  @override
  Widget build(BuildContext context) {
    final double remainingHeight = MediaQuery.of(context).size.height -
        kToolbarHeight -
        MediaQuery.of(context).padding.top;

    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: BackButton(
            color: Theme.of(context).brightness == Brightness.dark
                ? Colors.white
                : purple100, // <-- SEE HERE
          ),
          title: Text(
            'My Tweeg’d world',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Theme.of(context).brightness == Brightness.dark
                  ? Colors.white
                  : purple100,
            ),
          ),
          // actions: [
          //   IconButton(
          //     onPressed: () {
          //       Navigator.push(context, ChatScreen.route());
          //     },
          //     icon: Iconify(
          //       Teenyicons.message_text_alt_solid,
          //       color: Theme.of(context).brightness == Brightness.dark
          //           ? Colors.white
          //           : purple100,
          //     ),
          //   ),
          //   IconButton(
          //     onPressed: () {
          //       Navigator.of(context).push(MaterialPageRoute(
          //           builder: (context) => const NotificationPage()));
          //     },
          //     icon: Icon(
          //       Icons.notifications,
          //       color: Theme.of(context).brightness == Brightness.dark
          //           ? Colors.white
          //           : purple100,
          //     ),
          //   )
          // ],
        ),
        body:
        SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 120,
                child: Row(
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 5.0,
                        ),

                        Stack(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.grey,
                              radius: 40,
                              backgroundImage: AssetImage(Assets.Image3),
                            ),
                            Positioned(
                              right: 8,
                              bottom: 7,
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  vertical: 5,
                                  horizontal: 5,
                                ),
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  color: Colors.purple,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Image.asset(Assets.vector),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'addpod',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Theme.of(context).brightness == Brightness.dark
                                ? Colors.white
                                : purple100,
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: stories.length,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: StoryItem(
                              image: stories[index].image,
                              username: stories[index].username,
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                )
              ),
              SizedBox(
                height: remainingHeight,
                child: SizedBox(
                  width: double.infinity,
                  child:
                ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: posts.length,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: PostView1(
                        userId: posts[index].userId,
                        images: posts[index].images,
                        image: posts[index].image,
                        caption: posts[index].caption,
                        datetime: posts[index].datetime,
                        listens: posts[index].listens,
                        username: posts[index].username,
                      ),
                    );
                  },
                ),
                ),
              )
            ],
          ),
        )
    );
  }
}
