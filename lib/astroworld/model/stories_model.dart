import 'package:astrtwig/assets.dart';
import '';
class Story{
  final String userId;
  final String image;
  final String username;

  Story(
     this.userId,
     this.username,
     this.image,
);
}

final List<Story> stories = [
  Story('user1','mypod',Assets.pfp1),
  Story('user2','jacob',Assets.pfp),
  Story('user3','odogwu',Assets.pfp2),
  Story('user4','ella',Assets.pfp4),
];