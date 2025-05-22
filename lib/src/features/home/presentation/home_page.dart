import 'package:bank_farming/src/common_widgets/carousel_image_slider.dart';
import 'package:bank_farming/src/common_widgets/circular_chart.dart';
import 'package:bank_farming/src/common_widgets/icon_btn.dart';
import 'package:bank_farming/src/common_widgets/search_field.dart';
import 'package:bank_farming/src/features/home/data/data_source/horizontal_btn_data.dart';
import 'package:bank_farming/src/features/home/data/repository/category_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../common_widgets/badge_button.dart';
import '../../../common_widgets/drop_down_menu.dart';
import '../../../constant/color_constant.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Image.asset(
          'assets/images/logo/farm_logo.png',
          width: 30,
          height: 30,
        ),
      ),
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.white,
      title: Text('Farm Chat', style: TextStyle(fontWeight: FontWeight.bold)),
      actions: [
        BadgeButton(
          showBadge: true,
          onPressed: () {},
          icon: Icons.notifications_none_rounded,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final catList = ref.read(categoryRepositoryProvider).fetchData();
    final txtBtnList = ref.read(horizontalBtnDataProvider);

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: SearchField(searchController: TextEditingController()),
              ),
              SizedBox(width: 10.sp),
              IconMenuButton()
            ],
          ),
          SizedBox(height: 30),
          AnimatedCircularChart(),
          SizedBox(height: 30),
          SizedBox(
            height: 50, // Constrain height for horizontal scrolling
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: txtBtnList.length,
              separatorBuilder: (context, index) => const SizedBox(width: 12),
              itemBuilder: (BuildContext context, int index) {
                final isSelected = selectedIndex == index;
                final dataItem = txtBtnList[index];
                return TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: isSelected ? colFour : colThree,
                    elevation: 4.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: isSelected ? colFour : colThree),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                  ),
                  onPressed: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: Text(
                    dataItem.btnTxt,
                    style: TextStyle(
                      fontSize: 16,
                      color: isSelected ? colThree : colFour,
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/random/Download_Green.jpg'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Total loan balance',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: colFour),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '\$1,890.10',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: colFour,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                IconBtnOne(
                  onIconPressed: () {},
                  fixed: 30,
                  backgroundColor: colThree.withAlpha(60),
                  iconSize: 20,
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          CategoryCarousel(categoryProvider: catList),
          SizedBox(height: 150),
        ],
      ),
    );
  }
}
