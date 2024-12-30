import 'package:flutter/material.dart';

class HomeBottomNavbarWidget extends StatefulWidget {
  ValueChanged onTap;
  int currentIndex;

  HomeBottomNavbarWidget({
    super.key,
    required this.onTap,
    required this.currentIndex
  });

  @override
  State<HomeBottomNavbarWidget> createState() => _HomeBottomNavbarWidgetState();
}

class _HomeBottomNavbarWidgetState extends State<HomeBottomNavbarWidget> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: widget.currentIndex,
      selectedItemColor: Colors.green.shade700,
      onTap: widget.onTap,
      unselectedItemColor: Colors.blueGrey,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.grey.shade800.withOpacity(0.4),
      
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Главная'
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.attach_money_outlined),
            label: 'Расходы'
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'История'
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Профиль'
        ),
      ],
    );
  }
}
