import 'package:bank_farming/src/features/feed/domain/feed.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'feed_data.g.dart';

class FeedData {
  List<Feed> feedList = [
    Feed(
      feedProfile: 'assets/images/portrait/Photography.jpg',
      feedLocation: 'Ghana',
      feedName: 'John',
      feedCoverImage: 'assets/images/feed_image/Accra_Ghana.jpg',
    ),
    Feed(
      feedProfile: 'assets/images/portrait/Polished.jpg',
      feedLocation: 'Paris',
      feedName: 'Peter',
      feedCoverImage:
          'assets/images/feed_image/Photograph_nature_beautiful.jpg',
    ),
    Feed(
      feedProfile: 'assets/images/portrait/Daniel Craig.jpg',
      feedLocation: 'Italy',
      feedName: 'James',
      feedCoverImage: 'assets/images/feed_image/Colosseum_Italy\'s.jpg',
    ),
    Feed(
      feedProfile: 'assets/images/portrait/Digital_Mirage.jpg',
      feedLocation: 'Finland',
      feedName: 'Sam',
      feedCoverImage: 'assets/images/feed_image/Northern Lights in Finland.jpg',
    ),
    Feed(
      feedProfile: 'assets/images/portrait/Shi Hao.jpg',
      feedLocation: 'Egypt',
      feedName: 'Godson',
      feedCoverImage: 'assets/images/feed_image/When_egypt.jpg',
    ),
    Feed(
      feedProfile: 'assets/images/portrait/post.jpg',
      feedLocation: 'Germany',
      feedName: 'Nat',
      feedCoverImage: 'assets/images/feed_image/Fairytale_Germany.jpg',
    ),
    Feed(
      feedProfile: 'assets/images/portrait/Shi-Won.jpg',
      feedLocation: 'Jamaica',
      feedName: 'Wisdom',
      feedCoverImage: 'assets/images/feed_image/Jamaica_Nature.jpg',
    ),
    Feed(
      feedProfile: 'assets/images/portrait/vecteezy_hand.jpg',
      feedLocation: 'Kuwait',
      feedName: 'Prince',
      feedCoverImage: 'assets/images/feed_image/IG- Kuwait.jpg',
    ),
    Feed(
      feedProfile: 'assets/images/portrait/cu46LMyy.jpg',
      feedLocation: 'Norway',
      feedName: 'Princess',
      feedCoverImage: 'assets/images/feed_image/City-Norway.jpg',
    ),
    Feed(
      feedProfile: 'assets/images/portrait/Wang lin.jpg',
      feedLocation: 'Qatar',
      feedName: 'philip',
      feedCoverImage: 'assets/images/feed_image/Doha views.jpg',
    ),
  ];
}

@riverpod
List<Feed> feedData(ref) => FeedData().feedList;
