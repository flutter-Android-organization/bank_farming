import 'package:bank_farming/src/features/chat/domain/channel.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'channel_data.g.dart';


class ChannelData {
  List<Channel> channelList = [
    Channel(chanImage: 'assets/images/group/sport.jpg', chanTxt: 'Sport'),
    Channel(chanImage: 'assets/images/group/games.jpg', chanTxt: 'Games'),
    Channel(chanImage: 'assets/images/group/book_club.jpg', chanTxt: 'Literature'),
    Channel(chanImage: 'assets/images/group/movies.jpg', chanTxt: 'Movies'),
    Channel(chanImage: 'assets/images/group/Series.jpg', chanTxt: 'Series'),
    Channel(chanImage: 'assets/images/group/gambling.jpg', chanTxt: 'Gambling'),
    Channel(chanImage: 'assets/images/group/music.jpg', chanTxt: 'Music'),
    Channel(chanImage: 'assets/images/group/tech.jpg', chanTxt: 'Tech'),
    Channel(chanImage: 'assets/images/group/motor7.jpg', chanTxt: 'Biker'),
    Channel(chanImage: 'assets/images/group/animals.jpg', chanTxt: 'Animals'),
  ];
}


@riverpod
List<Channel> channelData(ref) => ChannelData().channelList;