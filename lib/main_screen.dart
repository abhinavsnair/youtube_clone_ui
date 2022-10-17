import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:youtube_clone_ui/screens/add/add.dart';
import 'package:youtube_clone_ui/screens/home/home.dart';
import 'package:youtube_clone_ui/screens/library/library.dart';
import 'package:youtube_clone_ui/screens/shorts/shorts.dart';
import 'package:youtube_clone_ui/screens/sub/subscription.dart';

class MainScreen extends StatefulWidget {
  MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

List screens = [
  const HomeScreen(),
  ShortsScreen(),
  AddScreen(),
  const SubScreen(),
  const LibScreen()
];

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  onchanged(value) {
    setState(() {
      currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onchanged,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_collection_outlined), label: 'Shorts'),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_outline_outlined), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.subscriptions_outlined), label: 'Subscriptions'),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_add), label: 'Library'),
        ],
      ),
    );
  }
}
