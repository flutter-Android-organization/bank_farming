import 'package:bank_farming/src/features/chat/presentation/chat_page.dart';
import 'package:bank_farming/src/features/feed/presentation/feed_page.dart';
import 'package:bank_farming/src/features/home/presentation/home_page.dart';
import 'package:bank_farming/src/features/profile/presentation/profile_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'custom_app_body.g.dart';

class CustomAppBody {
  List<Widget> appBodyList = [
    HomePage(),
    ProfilePage(),
    FeedPage(),
    ChatPage()
  ];
}

@riverpod
List<Widget> customAppBody(ref) => CustomAppBody().appBodyList;
