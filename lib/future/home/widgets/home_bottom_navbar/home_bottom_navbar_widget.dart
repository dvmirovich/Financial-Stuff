import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeBottomNavbarWidget extends StatefulWidget {
  final ValueChanged<int> onTap;
  final int currentIndex;

  HomeBottomNavbarWidget({
    super.key,
    required this.onTap,
    required this.currentIndex,
  });

  @override
  State<HomeBottomNavbarWidget> createState() => _HomeBottomNavbarWidgetState();
}

class _HomeBottomNavbarWidgetState extends State<HomeBottomNavbarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 108,
      width: 430,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(60),
          topRight: Radius.circular(60),
        ),
        color: Color(0xffDFF7E2),
      ),
      child: BottomAppBar(
        color: Colors.transparent,
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(4, (index) {
            String icon;
            switch (index) {
              case 0:
                icon = 'assets/icons/home_icon.svg';
                break;
              case 1:
                icon = 'assets/icons/analytic_icon.svg';
                break;
              case 2:
                icon = 'assets/icons/transfers_icon.svg';
                break;
              case 3:
                icon = 'assets/icons/person_icon.svg';
                break;
              default:
                icon = 'assets/icons/person_icon.svg';
                break;
            }

            return GestureDetector(
              onTap: () => widget.onTap(index),
              child: AnimatedContainer(
                duration: Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: widget.currentIndex == index
                      ? Color(0xff00D09E)
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: SvgPicture.asset(
                  icon,
                  width: 40,
                  height: 40,
                  color: widget.currentIndex == index
                      ? Colors.white
                      : Colors.black,
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
