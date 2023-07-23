// ignore_for_file: must_be_immutable

import 'package:astrtwig/colors.dart';
import 'package:flutter/material.dart';

class LikeButton extends StatelessWidget {
  final bool isLiked;
  void Function()? onTap;

  LikeButton({super.key, required this.isLiked, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Icon(
        isLiked ? Icons.favorite : Icons.favorite_border,
        color: isLiked
            ? Colors.red
            : Theme.of(context).brightness == Brightness.dark
                ? Colors.white
                : purple100,
      ),
    );
  }
}
