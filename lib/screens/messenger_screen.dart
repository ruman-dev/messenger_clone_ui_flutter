import 'package:flutter/material.dart';
import 'package:messenger_project/widgets/active_members.dart';
import 'package:messenger_project/widgets/chat_list.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Wrap the horizontal ListView with Expanded to fix rendering issues
            ActiveMembers(),
            // Vertical ListView for additional content
            ChatList(),
          ],
        ),
      ),
    );
  }
}
