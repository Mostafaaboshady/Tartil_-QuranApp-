import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:hidaya/features/home/presentation/views/widgets/list_ayah_body.dart';
import 'package:hidaya/features/prayer/presentation/views/widgets/prayer_body.dart';
import 'package:hidaya/features/home/presentation/views/widgets/widget_screen/ayah3_body.dart';
import 'package:hidaya/features/home/presentation/views/widgets/widget_screen/ayah_body.dart';
import 'package:hidaya/features/home/presentation/views/widgets/widget_screen/home_body.dart';
import 'package:hidaya/features/profile/presentation/views/widgets/profile_body.dart';
import 'package:hidaya/features/profile/presentation/views/widgets/setting_body.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


// List of pages to navigate between
  final List<Widget> _pages = [
    const HomeBody(),
    const ListAyahBody(),
    const PrayerTimesPage(),
    const ProfileBody()];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          resizeToAvoidBottomInset: false,
          body: _pages[_selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.grey,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'القائمة'),
              BottomNavigationBarItem(icon: Icon(Icons.menu_book), label: 'قرأن'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.mosque), label: 'الصلاة'),
              BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'الاعددات'),
            ],
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
          ),
        ),
      );
  }
}

