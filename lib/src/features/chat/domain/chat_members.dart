import 'package:freezed_annotation/freezed_annotation.dart';
part 'chat_members.freezed.dart';

@freezed
abstract class ChatMembers with _$ChatMembers {
  const factory ChatMembers({
    required String memberImage,
    required String memberName,
    required String memberQuote,
    required String time,
  }) = _ChatMembers;
}
