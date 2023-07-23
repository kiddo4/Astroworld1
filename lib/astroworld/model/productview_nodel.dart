import 'package:astrtwig/assets.dart';

class Posts {
  String userId;
  String image;
  String images;
  String username;
  String datetime;
  String listens;
  String caption;

  Posts(
      this.userId,
    this.images,
    this.image,
    this.username,
    this.datetime,
    this.listens,
    this.caption,
  );
}

final List<Posts> posts = [
  Posts('user1',Assets.pfp, Assets.pst1, 'hella', 'yesterday, 22:33', '1,566 listens',
      'Feeling good today😃..can you check my portfolio? https://dribbble.com/jonathanschubert'),
  Posts('user2',Assets.pfp1, Assets.pst2, 'ben', 'yesterday, 22:33', '1,566 listens',
      'Feeling good today😃..can you check my portfolio? https://dribbble.com/jonathanschubert'),
  Posts('user3',Assets.pfp1, Assets.pst2, 'ben', 'yesterday, 22:33', '1,566 listens',
      'Feeling good today😃..can you check my portfolio? https://dribbble.com/jonathanschubert'),
  Posts('user3',Assets.pfp1, Assets.pst2, 'ben', 'yesterday, 22:33', '1,566 listens',
      'Feeling good today😃..can you check my portfolio? https://dribbble.com/jonathanschubert'),
  Posts('user4',Assets.pfp1, Assets.pst2, 'ben', 'yesterday, 22:33', '1,566 listens',
      'Feeling good today😃..can you check my portfolio? https://dribbble.com/jonathanschubert')
];
