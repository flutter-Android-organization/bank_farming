import 'package:bank_farming/src/common_widgets/intros_drawer.dart';
import 'package:bank_farming/src/features/chat/data/repository/drawer_repository.dart';
import 'package:bank_farming/src/features/page_navigation/data/repository/app_bar_repository.dart';
import 'package:bank_farming/src/features/page_navigation/data/repository/app_body_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common_widgets/bottom_navigation.dart';
import '../../../constant/color_constant.dart';

class PageNav extends ConsumerStatefulWidget {
  const PageNav({super.key});

  @override
  ConsumerState createState() => _PageNavState();
}

class _PageNavState extends ConsumerState<PageNav> {
  int _selectItem = 0;

  void _onItemClick(int value) {
    setState(() {
      _selectItem = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    final appBarList = ref.read(appBarRepositoryProvider).fetchList();
    final appBodyList = ref.read(appBodyRepositoryProvider).fetchList();
    final appDrawerList = ref.read(drawerRepositoryProvider).fetchList();

    return Scaffold(
      drawer: IntrosDrawer(drawDataList: appDrawerList,),
      backgroundColor: colOne,
      appBar: appBarList[_selectItem],
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
              child: AnimatedSwitcher(
                duration: Duration(milliseconds: 800),
                child: appBodyList[_selectItem],
              )
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CurvedBottomNarBar(
                  currentIndex: _selectItem,
                  onItemTap: _onItemClick
              ),
              SizedBox(height: 20,)
            ],
          )
        ],
      ),
    );
  }
}
