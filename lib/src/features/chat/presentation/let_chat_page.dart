import 'package:bank_farming/src/features/chat/domain/chat_message.dart';
import 'package:bank_farming/src/features/chat/presentation/bottom_txt_field.dart';
import 'package:bank_farming/src/common_widgets/icon_btn.dart';
import 'package:bank_farming/src/common_widgets/rainbow_outline.dart';
import 'package:bank_farming/src/features/chat/presentation/chat_card.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../constant/color_constant.dart';

class LetChatPage extends ConsumerStatefulWidget {
  const LetChatPage({
    super.key,
    required this.userImage,
    required this.userName,
    required this.userSub,
  });

  final String userName;
  final String userSub;
  final String userImage;

  @override
  ConsumerState createState() => _LetChatPageState();
}

class _LetChatPageState extends ConsumerState<LetChatPage> {
  final _chatController = TextEditingController();
  String? _selectedFileName;
  final List<ChatMessage> _displayText = [];

  IconData actionBtnIcon = Icons.mic_none_outlined;

  @override
  void initState() {
    super.initState();
    _updateActionIcon();

    _chatController.addListener(_updateActionIcon);
  }

  @override
  void dispose() {
    _chatController.removeListener(_updateActionIcon);
    _chatController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colOne,
      appBar: AppBar(
        foregroundColor: colFour,
        backgroundColor: Colors.transparent,
        title: InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: () {},
          child: Row(
            children: [
              Hero(tag: '', child:  RainbowOutline(
                child: CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage(widget.userImage),
                ),
              ),),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.userName,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: colFour,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    widget.userSub,
                    style: TextStyle(fontSize: 12, color: colFour),
                  ),
                ],
              ),
            ],
          ),
        ),
        actions: [
          IconBtnOne(
            onIconPressed: () {},
            iconSize: 25,
            icon: Icons.add_ic_call_outlined,
            backgroundColor: Colors.transparent,
            iconColor: colFour,
          ),
          IconBtnOne(
            onIconPressed: () {},
            iconSize: 25,
            icon: Icons.more_vert_outlined,
            backgroundColor: Colors.transparent,
            iconColor: colFour,
          ),
        ],
      ),
      body: Stack(
        alignment: Alignment.center,
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
          _displayText.isEmpty
              ? Center(
                child: Card(
                  margin: EdgeInsets.all(20),
                  elevation: 4,
                  color: colThree,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.security, color: Colors.amber),
                        SizedBox(height: 10),
                        Text(
                          'Messages and calls are end-to-end encrypted.Only people in this chat can read, listen to, or share them. learn more.',
                          softWrap: true,
                          overflow: TextOverflow.visible,
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.amber),
                        ),
                      ],
                    ),
                  ),
                ),
              )
              : ChatCard(receiveTxt: _displayText),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              if (_selectedFileName != null)
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: colThree,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Image.asset('assets/images/logo/file_present.png'),
                     // const Icon(Icons.file_copy_outlined, color: colFour),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          _selectedFileName!,
                          style: const TextStyle(fontWeight: FontWeight.bold, color: colFour),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.close, color: colFour,),
                        onPressed: () {
                          setState(() {
                            _selectedFileName = null;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              BottomTxtField(
                chatController: _chatController,
                actionBtn: _sendMessage,
                actionBtnIcon: actionBtnIcon,
                onAttached: _pickFile,
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _updateActionIcon() {
    final hasText = _chatController.text.isNotEmpty;
    final hasFile = _selectedFileName != null;
    final newIcon = hasText || hasFile ? Icons.send : Icons.mic_none_outlined;

    if (newIcon != actionBtnIcon) {
      setState(() {
        actionBtnIcon = newIcon;
      });
    }
  }

  Future<void> _pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null && result.files.isNotEmpty) {
      setState(() {
        _selectedFileName = result.files.first.name;
        _updateActionIcon();
      });
    }
  }

  void _sendMessage() {
    final text = _chatController.text.trim();

    if (_selectedFileName != null || text.isNotEmpty) {
      setState(() {
        _displayText.insert(
          0,
          ChatMessage(
            text: text.isNotEmpty ? text : null,
            fileName: _selectedFileName,
          ),
        );
        _chatController.clear();
        _selectedFileName = null;
      });
    }
    _updateActionIcon();
  }

}
