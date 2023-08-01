import 'package:astrtwig/assets.dart';
class Comment {
  String profilePic;
  String username;
  String comment;
  String timeCommented;

  Comment({
    required this.username,
    required this.comment,
    required this.profilePic,
    required this.timeCommented
});
}

final List<Comment> comments = [
  Comment(username: 'josh', comment: 'this tweeg looks cool mehn',
      profilePic: Assets.pfp1, timeCommented: 'Just now'),
  Comment(username: 'hella', comment: 'Astroworld is that world keep that vibes going with some elevating tweegs',
      profilePic: Assets.pfp2, timeCommented: '23 mins ago'),
  Comment(username: 'jacob', comment: 'My kinda tweeg',
      profilePic: Assets.pfp3, timeCommented: 'An hour ago'),
  Comment(username: 'odogwu', comment: 'Make we just dey tweeg dey go #StayAstro #StayAbove',
      profilePic: Assets.pfp4, timeCommented: '2 hrs ago'),
  Comment(username: 'odo', comment: 'i love staying astro #StayAstro #StayAbove',
      profilePic: Assets.pfp, timeCommented: '2 hrs ago'),
];