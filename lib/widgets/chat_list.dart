import 'package:flutter/material.dart';
import 'package:messenger_project/data/person_info.dart';
import 'package:messenger_project/widgets/single_chat_view.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 12,
      child: ListView.builder(
        itemCount: personData.length,
        itemBuilder: (context, index) {
          return SingleChatView(itemNum: index);
        },
      ),
    );
  }
}
