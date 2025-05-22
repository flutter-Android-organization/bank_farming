import 'package:flutter/material.dart';
import '../../../constant/color_constant.dart';
import '../../../common_widgets/icon_btn.dart';

class BottomTxtField extends StatelessWidget {
  const BottomTxtField({
    super.key,
    required this.chatController,
    required this.actionBtn,
    required this.actionBtnIcon,
    required this.onAttached,
  });

  final TextEditingController chatController;
  final VoidCallback actionBtn;
  final IconData actionBtnIcon;
  final VoidCallback onAttached;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 10, 20, 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: chatController,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(5),
                    hintText: 'enter message... ',
                    hintStyle: TextStyle(color: Colors.black),
                    filled: true,
                    fillColor: colFour,
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 2.0,
                        color: colOne,
                      ), // Focus border
                      borderRadius: BorderRadius.circular(50),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ), // Enabled border
                      borderRadius: BorderRadius.circular(50),
                    ),
                    prefixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.emoji_emotions_outlined,
                        color: Colors.black,
                      ),
                    ),
                    suffixIcon: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          onPressed: onAttached,
                          icon: Icon(Icons.attach_file, color: Colors.black),
                        ),
                        SizedBox(width: 8),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.camera_alt_outlined,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              IconBtnOne(
                onIconPressed: actionBtn,
                iconSize: 25,
                icon: actionBtnIcon,
                backgroundColor: colOne,
                iconColor: colThree,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
