import 'package:flutter/material.dart';
import 'package:astrtwig/colors.dart';
class StoryItem extends StatelessWidget {
  final String image;
  final String username;
  
  const StoryItem({
    super.key,
    required this.image,
    required this.username
  });

  @override
  Widget build(BuildContext context) {

       return Column(
           children: [
             CircleAvatar(
               backgroundColor: Colors.grey,
               radius: 40,
               backgroundImage: AssetImage(
                 image,
               ),
             ),
             Text(
                 username,
                 style: TextStyle(
                   fontSize: 15,
                   fontWeight: FontWeight.w400,
                   color: Theme.of(context).brightness == Brightness.dark
                       ? Colors.white
                       : purple100,
                 )
             )
           ],
        );
  }
}
