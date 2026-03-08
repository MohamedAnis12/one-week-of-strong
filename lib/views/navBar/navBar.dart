import 'package:flutter/material.dart';
import 'package:testing/views/navBar/widgets/scr.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int cIndex = 0;
  List<Widget> screens = [
    Scr(num: 1, color: Colors.red),
    Scr(num: 2, color: Colors.blue),
    Scr(num: 3, color: Colors.yellow),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: cIndex,
        onTap: (value) {
          setState(() {
            cIndex = value;
          });
        },

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
          BottomNavigationBarItem(
            icon: Icon(Icons.security_update_warning),
            label: "",
          ),
        ],
      ),
      body: screens[cIndex],
    );
  }
}
