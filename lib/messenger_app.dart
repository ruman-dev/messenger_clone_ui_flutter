import 'package:flutter/material.dart';
import 'package:messenger_project/screens/messenger_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(useMaterial3: true),
      home: const MessengerScreen(),
    );
  }
}
