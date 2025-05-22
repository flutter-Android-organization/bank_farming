import 'package:bank_farming/src/common_widgets/horizontal_bar.dart';
import 'package:bank_farming/src/common_widgets/tile_widget.dart';
import 'package:flutter/material.dart';

import '../../../common_widgets/icon_btn.dart';
import '../../../common_widgets/rainbow_outline.dart';
import '../../../constant/color_constant.dart';

class FeedCard extends StatelessWidget {
  const FeedCard({
    super.key,
    this.feedProfile = 'assets/images/portrait/Polished.jpg',
    this.feedLocation = 'Paris',
    this.feedName = 'john_doe',
    this.feedCoverImage =
        'assets/images/random/Photograph_nature_beautiful.jpg',
  });

  final String feedProfile;
  final String feedLocation;
  final String feedName;
  final String feedCoverImage;

  @override
  Widget build(BuildContext context) {
    final double avatarSize = 20;

    final List<String> imageUrls = [
      'assets/images/group/book_club.jpg',
      'assets/images/group/games.jpg',
      'assets/images/group/motor7.jpg',
      'assets/images/group/Series.jpg',
    ];

    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: RainbowOutline(
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  feedProfile,
                ),
                radius: 30,
              ),
            ),
            title: Text(
              feedLocation,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              feedName,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: colFour),
            ),
            trailing: IconBtnOne(
              onIconPressed: () {},
              iconSize: 25,
              icon: Icons.more_horiz_outlined,
              backgroundColor: Colors.transparent,
              iconColor: colFour,
            ),
          ),
          SizedBox(height: 5),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            width: MediaQuery.of(context).size.width,
            height: 200,
            decoration: BoxDecoration(
              color: colThree,
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage(
                  feedCoverImage,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconBtnOne(
                      onIconPressed: () {},
                      iconSize: 25,
                      icon: Icons.favorite_outline,
                      backgroundColor: Colors.transparent,
                      iconColor: colFour,
                    ),
                    SizedBox(width: 10),
                    IconBtnOne(
                      onIconPressed: () {},
                      iconSize: 25,
                      icon: Icons.messenger_outline,
                      backgroundColor: Colors.transparent,
                      iconColor: colFour,
                    ),
                    SizedBox(width: 10),
                    IconBtnOne(
                      onIconPressed: () {},
                      iconSize: 25,
                      icon: Icons.send_outlined,
                      backgroundColor: Colors.transparent,
                      iconColor: colFour,
                    ),
                    SizedBox(width: 10),
                  ],
                ),
              ),
              IconBtnOne(
                onIconPressed: () {},
                iconSize: 25,
                icon: Icons.add_box_outlined,
                backgroundColor: Colors.transparent,
                iconColor: colFour,
              ),
            ],
          ),
          SizedBox(height: 5),
          SizedBox(
            height: avatarSize * 2,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: List.generate(imageUrls.length, (index) {
                return Transform.translate(
                  offset: Offset(
                    -avatarSize * index * 0.5,
                    0,
                  ), // shift left by half radius per avatar
                  child: RainbowOutline(
                    child: CircleAvatar(
                      radius: avatarSize,
                      backgroundImage: AssetImage(imageUrls[index]),
                      backgroundColor: Colors.grey[300],
                    ),
                  ),
                );
              }),
            ),
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Liked by',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: colFour),
              ),
              SizedBox(width: 3),
              Text(
                'jane_mantle',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: colFour, fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 3),
              Text(
                'and',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: colFour),
              ),
              SizedBox(width: 3),
              Text(
                '20 others',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: colFour, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                feedName,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: colFour, fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 3),
              Text(
                'Tour Eiffel paris trip',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: colFour),
              ),
            ],
          ),
          SizedBox(height: 5),
          Text(
            '2 days ago',
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: colFour),
          ),
          HorizontalBar(barMargin: EdgeInsets.fromLTRB(0, 10, 0, 0))
        ],
      ),
    );
  }
}
