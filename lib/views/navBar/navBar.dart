import 'package:flutter/material.dart';
import 'package:testing/views/navBar/widgets/scr.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int cIndex = 1;
 final List<Screen> screens = [
    Screen(num: 1, color: Colors.red),
    Screen(num: 2, color: Colors.blue),
    Screen(num: 3, color: Colors.yellow),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedIconTheme: IconThemeData(color: Colors.black),
        unselectedIconTheme: IconThemeData(color: Colors.purple),
        backgroundColor: screens[cIndex].color,
        type: BottomNavigationBarType.shifting,
        currentIndex: cIndex,
        onTap: (value) {
          setState(() {
            cIndex = value;
          });
        },

        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "",
            backgroundColor: screens[0].color,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "",
            backgroundColor: screens[1].color,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.security_update_warning),
            label: "",
            backgroundColor: screens[2].color,
          ),
        ],
      ),
      body: Scr(num: screens[cIndex].num, color: screens[cIndex].color),
    );
  }
}

class Screen {
  int num;
  Color color;
  Screen({required this.num, required this.color});
}
