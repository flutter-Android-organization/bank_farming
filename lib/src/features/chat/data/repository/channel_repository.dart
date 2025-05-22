import 'package:bank_farming/src/features/chat/data/data_source/channel_data.dart';
import 'package:bank_farming/src/features/chat/domain/channel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'channel_repository.g.dart';

class ChannelRepository {
  const ChannelRepository(this.ref);

  final Ref ref;

  List<Channel> fetchData() => ref.read(channelDataProvider);
}


@riverpod
ChannelRepository channelRepository(ref) => ChannelRepository(ref);