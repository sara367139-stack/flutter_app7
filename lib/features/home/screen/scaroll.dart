import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/product/all_products.dart';
import 'package:flutter_application_1/features/profile/profile.dart';
import 'package:flutter_application_1/features/settings/setting.dart';
import 'home_screen.dart' as home;
//import 'analytics.dart';
//import 'notifications.dart';
import '../widgets/bottom_nav.dart';

class Scaroll extends StatefulWidget {
  const Scaroll({super.key});

  @override
  State<Scaroll> createState() => _ScarollState();
}

class _ScarollState extends State<Scaroll> {
  int _currentIndex = 0;

  final List<Widget> pages = const [
    home.HomeScreen(),
    AllProducts(),
    Profile(),
    Settings(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: pages,
      ),
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
