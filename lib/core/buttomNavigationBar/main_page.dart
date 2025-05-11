import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mypro/core/buttomNavigationBar/custom_navigation_bar.dart';
import 'package:mypro/core/utils/api_service.dart';
import 'package:mypro/features/home/data/repos/home_repo_impl.dart';
import 'package:mypro/features/home/presentation/manger/shoes_models/shoes_models_cubit.dart';
import 'package:mypro/features/home/presentation/views/home_view.dart';
import 'package:mypro/features/record/presentation/views/record_view.dart';
import '';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  final List<Widget> _children = [

    BlocProvider(
      create: (context) => ShoesModelsCubit(
        HomeRepoImpl(
          ApiService(
            Dio(),
          ),
        ),
      )..fetchAllShoesModels(),
      child: const HomeView(),
    ),

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
