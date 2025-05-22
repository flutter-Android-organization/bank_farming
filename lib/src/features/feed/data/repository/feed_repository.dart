import 'package:bank_farming/src/features/feed/data/data_source/feed_data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/feed.dart';
part 'feed_repository.g.dart';

class FeedRepository {
  const FeedRepository(this.ref);

  final Ref ref;

  List<Feed> fetchList() => ref.read(feedDataProvider);
}


@riverpod
FeedRepository feedRepository(ref) => FeedRepository(ref);