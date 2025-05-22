import 'package:bank_farming/src/features/feed/data/repository/feed_repository.dart';
import 'package:bank_farming/src/features/feed/domain/feed.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'feed_view_model.g.dart';

@Riverpod(keepAlive: true)
class FeedViewModel extends _$FeedViewModel {
  @override
  FutureOr<List<Feed>> build() async{
    return ref.read(feedRepositoryProvider).fetchList();
  }

}