import 'dart:math';

import 'package:flutter/material.dart';
import './options.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final jistiMeeting = JistiMeeting();

  Future<void> createNewMetting() async {
    print("I am random");
    var random = Random();
    String roomName = (random.nextInt(10000000) + 10000000).toString();
    await jistiMeeting.createMetting(roomName: roomName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            await createNewMetting();
          },
          child: const Text("Click to create jisti objects"),
        ),
      ),
    );
  }
}
