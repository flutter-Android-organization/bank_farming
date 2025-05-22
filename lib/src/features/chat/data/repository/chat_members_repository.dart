import 'package:bank_farming/src/features/chat/data/data_source/chat_member_data.dart';
import 'package:bank_farming/src/features/chat/domain/chat_members.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'chat_members_repository.g.dart';


class ChatMembersRepository {
  const ChatMembersRepository(this.ref);

  final Ref ref;

  List<ChatMembers> fetchData() => ref.read(chatMemberDataProvider);
}

@riverpod
ChatMembersRepository chatMembersRepository(ref) => ChatMembersRepository(ref);