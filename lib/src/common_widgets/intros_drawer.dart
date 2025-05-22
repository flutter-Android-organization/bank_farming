import 'package:bank_farming/src/common_widgets/horizontal_bar.dart';
import 'package:bank_farming/src/common_widgets/switch_example.dart';
import 'package:bank_farming/src/constant/color_constant.dart';
import 'package:bank_farming/src/features/chat/domain/drawers.dart';
import 'package:flutter/material.dart';

class IntrosDrawer extends StatefulWidget {
  const IntrosDrawer({super.key, required this.drawDataList});

  final List<Drawers> drawDataList;

  @override
  State<IntrosDrawer> createState() => _IntrosDrawerState();
}

class _IntrosDrawerState extends State<IntrosDrawer> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: colThree,
      child: Stack(
        children: [
          ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(color: Colors.black.withAlpha(50)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: CircleAvatar(
                        radius: 60,
                        child: Image.asset('assets/images/logo/farm_logo.png'),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Bank Farming',
                      textAlign: TextAlign.center,
                      softWrap: true,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: colFour,
                      ),
                    ),
                  ],
                ),
              ),
              ...List.generate(widget.drawDataList.length, (index) {
                final item = widget.drawDataList[index];
                final isLastSlide = index == widget.drawDataList.length - 1;
                return DrawerTile(
                  onTap: () {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                  data:  item.drawTxt,
                  iconImage: item.drawIcon,
                  selected: _selectedIndex == index,
                  trail: !isLastSlide,
                );
              })
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              HorizontalBar(barMargin: EdgeInsets.all(10)),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.all(10),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage(
                      'assets/images/portrait/Shi-Won.jpg',
                    ),
                  ),
                ),
                title: Text(
                  'Admin',
                  softWrap: true,
                  style: TextStyle(
                    color: colFour,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                subtitle: Text(
                  'Profession',
                  softWrap: true,
                  style: TextStyle(color: colFour),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.logout, color: colFour),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ],
      ),
    );
  }
}



class DrawerTile extends StatelessWidget {
  const DrawerTile({
    super.key,
    required this.onTap,
    required this.data,
    this.trail = true,
    required this.iconImage,
    this.selected = true,
  });

  final VoidCallback onTap;
  final String data;
  final IconData iconImage;
  final bool trail;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.black.withAlpha(50),
      onTap: onTap,
      child: ListTile(
        leading: Icon(iconImage, color: selected ? colOne : colFour),
        title: Text(
          data,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
              fontSize: selected ? 20 : 16 ,
              color: selected ? colOne : colFour,
          ),
        ),
        trailing: trail ? null : SwitchExample(),
      ),
    );
  }
}
