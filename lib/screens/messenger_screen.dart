import 'package:flutter/material.dart';
import 'package:messenger_project/widgets/active_list.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: ActiveList()),
    );
  }
}
