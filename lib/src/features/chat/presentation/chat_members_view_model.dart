import 'package:bank_farming/src/features/chat/data/repository/chat_members_repository.dart';
import 'package:bank_farming/src/features/chat/domain/chat_members.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'chat_members_view_model.g.dart';

@Riverpod(keepAlive: true)
class ChatMembersViewModel extends _$ChatMembersViewModel {
  @override
  FutureOr<List<ChatMembers>> build() async {
    return ref.read(chatMembersRepositoryProvider).fetchData();
  }

}