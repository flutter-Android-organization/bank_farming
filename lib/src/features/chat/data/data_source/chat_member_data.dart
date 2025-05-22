import 'package:bank_farming/src/features/chat/domain/chat_members.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'chat_member_data.g.dart';

class ChatMemberData {
  List<ChatMembers> chatMemberList = [
    ChatMembers(
      memberImage: 'assets/images/portrait/Daniel Craig.jpg',
      memberName: 'James',
      memberQuote: 'God is King',
      time: '2d',
    ),
    ChatMembers(
      memberImage: 'assets/images/portrait/Digital_Mirage.jpg',
      memberName: 'Sam',
      memberQuote: 'Elevate',
      time: '23m',
    ),
    ChatMembers(
      memberImage: 'assets/images/portrait/Photography.jpg',
      memberName: 'John',
      memberQuote: 'Stand on Business',
      time: 'now',
    ),
    ChatMembers(
      memberImage: 'assets/images/portrait/post.jpg',
      memberName: 'Nat',
      memberQuote: 'Let there be light',
      time: '45m',
    ),
    ChatMembers(
      memberImage: 'assets/images/portrait/Polished.jpg',
      memberName: 'Peter',
      memberQuote: 'No man,s land',
      time: '1m',
    ),
    ChatMembers(
      memberImage: 'assets/images/portrait/Shi Hao.jpg',
      memberName: 'Godson',
      memberQuote: 'Know thy self',
      time: '6h',
    ),
    ChatMembers(
      memberImage: 'assets/images/portrait/Shi-Won.jpg',
      memberName: 'Wisdom',
      memberQuote: 'Speak your truth',
      time: '5m',
    ),
    ChatMembers(
      memberImage: 'assets/images/portrait/vecteezy_hand.jpg',
      memberName: 'Prince',
      memberQuote: 'life before death',
      time: '28d',
    ),
    ChatMembers(
      memberImage: 'assets/images/portrait/cu46LMyy.jpg',
      memberName: 'Princess',
      memberQuote: 'the rich needs nothing',
      time: '10d',
    ),
    ChatMembers(
      memberImage: 'assets/images/portrait/Wang lin.jpg',
      memberName: 'philip',
      memberQuote: 'All is equal before death',
      time: '6m',
    ),
    ChatMembers(
      memberImage: 'assets/images/portrait/celebrate.jpg',
      memberName: 'vanessa',
      memberQuote: 'God is good',
      time: '8m',
    ),
    ChatMembers(
      memberImage: 'assets/images/portrait/𝑆𝒉𝑖 𝐻𝑎𝑜.jpg',
      memberName: 'william',
      memberQuote: 'Knowledge is power',
      time: '54m',
    ),
    ChatMembers(
      memberImage: 'assets/images/portrait/ht1EVwEx.jpg',
      memberName: 'Robin',
      memberQuote: 'There is nothing wrong with being sad',
      time: '3d 56m',
    ),
    ChatMembers(
      memberImage: 'assets/images/portrait/rN6US94E.jpg',
      memberName: 'Alex',
      memberQuote: 'tech backbone of the future',
      time: '20m',
    ),
  ];
}

@riverpod
List<ChatMembers> chatMemberData(ref) => ChatMemberData().chatMemberList;
