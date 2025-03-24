import 'package:ecom2/features/home/screens/home_screen.dart';
import 'package:ecom2/screens/order_screen.dart';
import 'package:ecom2/screens/print_screen.dart';
import 'package:flutter/material.dart';

class BottomNavLayout extends StatefulWidget {
  const BottomNavLayout({super.key});

  @override
  State<BottomNavLayout> createState() => _BottomNavLayoutState();
}

class _BottomNavLayoutState extends State<BottomNavLayout> {
  // States
  int currentIndex = 0;
  final screens = [HomeScreen(), Container(), PrintScreen(), OrderScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 400),
        switchInCurve: Curves.ease,
        child: screens[currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "HOME",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.trending_up),
            label: "TRENDINGS",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.print),
            label: "PRINTS",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_travel),
            label: "ORDERS",
          ),
        ],
      ),
    );
  }
}
