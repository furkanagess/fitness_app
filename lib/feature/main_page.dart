import 'package:fitness_app/feature/view/home/home_view.dart';
import 'package:fitness_app/feature/view/profile/profile_view.dart';
import 'package:fitness_app/feature/view/saved/saved_view.dart';
import 'package:fitness_app/product/constants/app_strings.dart';

import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentPage = 0;
  final pages = [
    const HomeView(),
    const SavedView(),
    const ProfileView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (index) {
          setState(() {
            currentPage = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: AppStrings.home,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
            ),
            label: AppStrings.saved,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: AppStrings.profile,
          ),
        ],
      ),
    );
  }
}
