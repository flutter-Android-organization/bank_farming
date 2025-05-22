import 'package:bank_farming/src/constant/color_constant.dart';
import 'package:bank_farming/src/features/chat/domain/chat_message.dart';
import 'package:flutter/material.dart';


class ChatCard extends StatelessWidget {
  const ChatCard({super.key, required this.receiveTxt});

  final List<ChatMessage> receiveTxt;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.fromLTRB(20, 20, 20, 150),
      reverse: true,
      itemCount: receiveTxt.length,
      itemBuilder: (context, index) {
        final message = receiveTxt[index];
        return Row(
          mainAxisAlignment:
              MainAxisAlignment.end, // Align the card to the right
          children: [
            Flexible(
              child: Container(
                constraints: BoxConstraints(
                  maxWidth:
                      MediaQuery.of(context).size.width *
                      0.7, // Limit width to 70%
                ),
                child: Card(
                  elevation: 4,
                  color: colThree,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomRight: Radius.zero,
                      bottomLeft: Radius.circular(10),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (message.fileName != null) ...[
                          Row(
                            children: [
                              Image.asset('assets/images/logo/file_present.png'),
                              const SizedBox(width: 5),
                              Expanded(
                                child: Text(
                                  message.fileName!,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: colFour,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                          if (message.text != null) const SizedBox(height: 6),
                        ],
                        if (message.text != null)
                          Text(
                            message.text!,
                            softWrap: true,
                            textAlign: TextAlign.left,
                            style: const TextStyle(color: colFour),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
