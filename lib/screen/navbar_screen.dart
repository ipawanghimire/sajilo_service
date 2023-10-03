import 'package:flutter/material.dart';
import 'package:sajilo_app/helper/constants.dart';
import 'package:sajilo_app/screen/booking_screen.dart';
import 'package:sajilo_app/screen/home_screen.dart';
import 'package:sajilo_app/screen/product_screen.dart';
import 'package:sajilo_app/screen/profile_page.dart';

class NavBarScreen extends StatefulWidget {
  @override
  _NavBarScreenState createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen> {
  int _currentIndex = 0;

  final List<Widget> _tabs = [
    const HomeScreen(),
    BookingPage(),
    ProductPage(),
    ProfilePage(),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: AppConstamts().primaryColor,
        unselectedItemColor: AppConstamts().greyColor,
        showUnselectedLabels: true,
        onTap: _onTabTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_border),
            label: 'Booking',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Products',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
