import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:untitled/future/expenses/expenses_screen.dart';
import 'package:untitled/future/history/history_screen.dart';
import 'package:untitled/future/home/widgets/home_app_bar_widgets/home_app_bar_widget.dart';
import 'package:untitled/future/home/widgets/home_body_widgets/home_body_widget.dart';
import 'package:untitled/future/home/widgets/home_bottom_navbar/home_bottom_navbar_widget.dart';
import 'package:untitled/future/profile/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  String resp = '';
  Dio dio = Dio();

  final List<Widget> _screens = [
    HomeBodyWidget(),
    ExpensesScreen(),
    HistoryScreen(),
    ProfileScreen()
  ];

  @override
  void initState() {
    super.initState();
  }

  _onTap (value) {
    if(mounted) {
      setState(() {
        _currentIndex = value;
      });
    }
  }



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _screens[_currentIndex],
        bottomNavigationBar: HomeBottomNavbarWidget(
          onTap: _onTap,
          currentIndex: _currentIndex,
        ),
      )
    );
  }
}
