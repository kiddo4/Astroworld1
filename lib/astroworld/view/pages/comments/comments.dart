import 'package:flutter/material.dart';
import 'package:astrtwig/colors.dart';
import 'package:astrtwig/astroworld/model/comments.dart';
import './comment_widget.dart';
import './comment_form.dart';
class Comments extends StatelessWidget {
  // const Comments({super.key});

  @override
  Widget build(BuildContext context) {
    final double remainingHeight = MediaQuery.of(context).size.height -
        kToolbarHeight -
        MediaQuery.of(context).padding.bottom;
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Theme.of(context).brightness == Brightness.dark
              ? Colors.white
              : purple100, // <-- SEE HERE
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Comments',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Theme.of(context).brightness == Brightness.dark
                ? Colors.white
                : purple100,
          ),
        ),
      ),
      body:  SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.84,
              child: ListView.builder(
                  itemCount: comments.length,
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: EdgeInsets.all(8.0),
                        child: usersComments(
                            username: comments[index].username,
                            comment: comments[index].comment,
                            profilePic: comments[index].profilePic,
                            timeCommented: comments[index].timeCommented),
                      );
                  }
              ),
            ),
            CommentForm(),
          ],
        ),
      ),
    );
  }
}
