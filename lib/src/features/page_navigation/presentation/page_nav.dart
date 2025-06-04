import 'package:bank_farming/src/common_widgets/intros_drawer.dart';
import 'package:bank_farming/src/features/chat/data/repository/drawer_repository.dart';
import 'package:bank_farming/src/features/page_navigation/data/repository/app_bar_repository.dart';
import 'package:bank_farming/src/features/page_navigation/data/repository/app_body_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

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
    final appBodyList = ref.read(appBodyRepositoryProvider).fetchList();

    return Scaffold(
      body: Stack(
        children: [
          AnimatedSwitcher(
            duration: Duration(milliseconds: 800),
            child: appBodyList[_selectItem],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CurvedBottomNarBar(
                  currentIndex: _selectItem,
                  onItemTap: _onItemClick,
              ),
              SizedBox(height: 20,)
            ],
          )
        ],
      ),
    );
  }
}
