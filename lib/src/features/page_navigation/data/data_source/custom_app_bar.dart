import 'package:bank_farming/src/features/chat/presentation/chat_page.dart';
import 'package:bank_farming/src/features/feed/presentation/feed_page.dart';
import 'package:bank_farming/src/features/profile/presentation/profile_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../home/presentation/home_page.dart';
part 'custom_app_bar.g.dart';


class CustomAppBar {
  List<Widget> appBarList = [
    AppBarWidget(),
    ProfileAppBar(),
    FeedAppBar(),
    ChatAppBar(),
  ];
}

@riverpod
List<Widget> customAppBar(ref) => CustomAppBar().appBarList;