import 'package:bank_farming/src/common_widgets/horizontal_bar.dart';
import 'package:bank_farming/src/common_widgets/rainbow_outline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../common_widgets/icon_btn.dart';
import '../../../constant/color_constant.dart';

class ProfileAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ProfileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      leading: Padding(
        padding: EdgeInsets.all(5),
        child: RainbowOutline(
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/images/random/prof.jpg'),
          ),
        ),
      ),
      foregroundColor: Colors.white,
      title: Text('Profile', style: TextStyle(fontWeight: FontWeight.bold)),
      actions: [
        IconBtnOne(
          onIconPressed: () {},
          iconSize: 25,
          icon: Icons.edit,
          backgroundColor: Colors.transparent,
          iconColor: colFour,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}

class ProfilePage extends ConsumerStatefulWidget {
  const ProfilePage({super.key});

  @override
  ConsumerState createState() => _ProfilePageState();
}

class _ProfilePageState extends ConsumerState<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProfileAppBar(),
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
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: RainbowOutline(
                    child: CircleAvatar(
                      radius: 100,
                      backgroundImage: AssetImage(
                        'assets/images/portrait/Shi-Won.jpg',
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 50),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Admin',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: colFour,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 5),
                          Row(
                            children: [
                              Icon(Icons.location_on_outlined, color: colFour,),
                              SizedBox(width: 5),
                              Text(
                                'Country',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(color: colFour),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    RainbowOutline(
                      child: CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage(
                          'assets/images/random/Ghana Flag.jpg',
                        ),
                      ),
                    ),
                  ],
                ),
                HorizontalBar(
                  barMargin: EdgeInsets.symmetric(vertical: 20),
                ),
                _profLayTxt(
                  headTxt: 'Birthday',
                  sunText: '1995-02-09',
                  subIcon: Icons.date_range_outlined,
                ),
                HorizontalBar(
                  barMargin: EdgeInsets.symmetric(vertical: 20),
                ),
                _profLayTxt(
                  headTxt: 'Phone Number',
                  sunText: '020-846-6557',
                  subIcon: Icons.phone_android_outlined,
                ),
                HorizontalBar(
                  barMargin: EdgeInsets.symmetric(vertical: 20),
                ),
                _profLayTxt(
                  headTxt: 'Email',
                  sunText: 'admin.admin@gmail.com',
                  subIcon: Icons.email_outlined,
                ),
                HorizontalBar(
                  barMargin: EdgeInsets.symmetric(vertical: 20),
                ),
                SizedBox(height: 100,)
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _profLayTxt({
    required String headTxt,
    required String sunText,
    required IconData subIcon,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          headTxt,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: colFour, fontWeight: FontWeight.bold),
        ),
        SizedBox(width: 5),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(subIcon, color: colFour),
            SizedBox(width: 5),
            Text(
              sunText,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: colFour),
            ),
          ],
        ),
      ],
    );
  }
}
