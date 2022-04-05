import 'package:flutter/material.dart';
import 'package:plypicker/constants.dart';
import 'package:velocity_x/velocity_x.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: 'plypicker'.text.black.uppercase.make(),
        elevation: 0.0,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 0.0,
        currentIndex: pageIndex,
        onTap: (value) {
          setState(() {
            pageIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.home_outlined,
              color: primaryColor,
            ),
            activeIcon: Icon(
              Icons.home,
              color: primaryColor,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.favorite_outline,
              color: primaryColor,
            ),
            activeIcon: Icon(
              Icons.favorite,
              color: primaryColor,
            ),
          ),
        ],
      ),
      body: pages[pageIndex],
    );
  }
}
