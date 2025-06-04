import 'package:bank_farming/src/features/feed/presentation/feed_card.dart';
import 'package:bank_farming/src/features/feed/presentation/feed_view_model.dart';
import 'package:bank_farming/src/utils/async_value_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../common_widgets/badge_button.dart';
import '../../../common_widgets/rainbow_outline.dart';
import '../../../constant/color_constant.dart';

class FeedAppBar extends StatelessWidget implements PreferredSizeWidget {
  const FeedAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.white,
      leading: Padding(
        padding: EdgeInsets.all(5),
        child: RainbowOutline(
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/images/random/prof.jpg'),
          ),
        ),
      ),
      title: Text('Feed', style: TextStyle(fontWeight: FontWeight.bold)),
      actions: [
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: colFour,
            shape: CircleBorder(),
          ),
          child: Icon(Icons.more_vert_outlined),
        ),
        BadgeButton(showBadge: true, onPressed: () {}, icon: Icons.call),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}

class FeedPage extends ConsumerStatefulWidget {
  const FeedPage({super.key});

  @override
  ConsumerState createState() => _FeedPageState();
}

class _FeedPageState extends ConsumerState<FeedPage> {
  @override
  Widget build(BuildContext context) {
    final feedState = ref.watch(feedViewModelProvider);
    return Scaffold(
      appBar: FeedAppBar(),
      backgroundColor: colOne,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black, // Darker at the bottom
                  Colors.transparent, // Transparent at center
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                AsyncValueWidget(
                  value: feedState,
                  data: (feedStateData) {
                    return Column(
                      children:
                          feedStateData.map((memberData) {
                            return FeedCard(
                              feedProfile: memberData.feedProfile,
                              feedName: memberData.feedName,
                              feedLocation: memberData.feedLocation,
                              feedCoverImage: memberData.feedCoverImage,
                            );
                          }).toList(),
                    );
                  },
                ),
                SizedBox(height: 120),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
