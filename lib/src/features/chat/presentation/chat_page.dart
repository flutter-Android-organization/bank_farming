import 'package:bank_farming/src/common_widgets/avatar_widget.dart';
import 'package:bank_farming/src/common_widgets/drop_down_menu.dart';
import 'package:bank_farming/src/common_widgets/rainbow_outline.dart';
import 'package:bank_farming/src/common_widgets/tile_widget.dart';
import 'package:bank_farming/src/features/chat/data/repository/channel_repository.dart';
import 'package:bank_farming/src/features/chat/presentation/chat_members_view_model.dart';
import 'package:bank_farming/src/features/chat/presentation/let_chat_page.dart';
import 'package:bank_farming/src/routing/route_names.dart';
import 'package:bank_farming/src/utils/async_value_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../common_widgets/badge_button.dart';
import '../../../common_widgets/search_field.dart';
import '../../../constant/color_constant.dart';

class ChatAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ChatAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: EdgeInsets.all(5),
        child: InkWell(
          borderRadius: BorderRadius.circular(100),
          onTap: () => Scaffold.of(context).openDrawer(),
          child: RainbowOutline(
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/portrait/Shi-Won.jpg'),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.white,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Admin', style: TextStyle(fontWeight: FontWeight.bold)),
          Text('Online', style: TextStyle(fontSize: 12)),
        ],
      ),
      actions: [
        BadgeButton(showBadge: true, onPressed: () {}, icon: Icons.call),
        // TextButton(
        //   onPressed: () {},
        //   style: TextButton.styleFrom(
        //     backgroundColor: colFour,
        //     shape: CircleBorder(),
        //   ),
        //   child: Icon(Icons.person_add_alt_1_outlined, color: Colors.black),
        // ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}

class ChatPage extends ConsumerStatefulWidget {
  const ChatPage({super.key});

  @override
  ConsumerState createState() => _ChatPageState();
}

class _ChatPageState extends ConsumerState<ChatPage> {
  @override
  Widget build(BuildContext context) {
    final memberState = ref.watch(chatMembersViewModelProvider);
    final groupList = ref.read(channelRepositoryProvider).fetchData();
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: SearchField(
                      searchController: TextEditingController(),
                    ),
                  ),
                  SizedBox(width: 10.sp),
                  IconMenuButton(),
                ],
              ),
              SizedBox(height: 20.sp),
              Row(
                children: [
                  Text(
                    'Group Chat',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: colFour,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 120.sp,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  itemCount: groupList.length,
                  separatorBuilder:
                      (context, index) => const SizedBox(width: 12),
                  itemBuilder: (BuildContext context, int index) {
                    final listItem = groupList[index];
                    return AvatarWidget(
                      assetName: listItem.chanImage,
                      avatarTxt: listItem.chanTxt,
                      onTap: () {},
                    );
                  },
                ),
              ),
            ],
          ),
        ),

        Row(
          children: [
            SizedBox(width: 20),
            Text(
              'Messages',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: colFour,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ],
        ),
        AsyncValueWidget(
          value: memberState,
          data: (memberList) {
            return Column(
              children:
                  memberList.map((memberData) {
                    return TileWidget(
                      memberImage: memberData.memberImage,
                      memberName: memberData.memberName,
                      memberQuote: memberData.memberQuote,
                      time: memberData.time,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => LetChatPage(
                                  userName: memberData.memberName,
                                  userSub: 'Last time seen',
                                  userImage: memberData.memberImage,
                                ),
                          ),
                        );
                      },
                    );
                  }).toList(),
            );
          },
        ),
        SizedBox(height: 150),
      ],
    );
  }
}
