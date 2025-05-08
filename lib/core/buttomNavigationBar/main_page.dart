import 'package:flutter/material.dart';
import 'package:mypro/core/buttomNavigationBar/custom_navigation_bar.dart';
import 'package:mypro/features/home/presentation/views/home_view.dart';
import 'package:mypro/features/record/presentation/views/record_view.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    const HomeView(),
    const RecordView(),
    // AccountView(),
    // ExitView()
  ];
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: CustomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
      ),
    );
  }
}
