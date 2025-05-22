import 'package:freezed_annotation/freezed_annotation.dart';
part 'feed.freezed.dart';


@freezed
abstract class Feed with _$Feed{
  const factory Feed({
    required String feedProfile,
    required String feedLocation,
    required String feedName,
    required String feedCoverImage,
}) = _Feed;
}

