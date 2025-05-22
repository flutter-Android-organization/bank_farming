import 'package:freezed_annotation/freezed_annotation.dart';
part 'chat_message.freezed.dart';

@freezed
abstract class ChatMessage with _$ChatMessage {
  const factory ChatMessage({String? text, String? fileName}) = _ChatMessage;
}
