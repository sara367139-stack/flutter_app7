
import 'package:flutter/material.dart' hide SearchBar;
import 'package:flutter_application_1/features/profile/profile.dart';
import 'package:flutter_application_1/features/settings/setting.dart';
//import 'package:flutter_application_1/features/home/screen/scaroll.dart';
//import 'package:flutter_application_1/features/home/widgets/bottom_nav.dart';
//import 'package:flutter_application_1/features/settings/setting.dart';
import '../widgets/product_widget.dart';
import '../widgets/search_bar.dart';
import '../widgets/category_list.dart';
// import '../widgets/bottom_nav.dart';
import '../../product/all_products.dart';




  final List<Widget> screens = [
    const HomeScreen(),
    const AllProducts(),
    const Profile(),
    const Settings(),
  ];


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});




  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 // int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
    
    appBar: AppBar(
      title: Text('Discover',
        style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),),
    ),
    body: SafeArea(
    child: SingleChildScrollView(
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SearchBar(),
          const SizedBox(height: 10),

          const CategoryList(),

          const SizedBox(height: 20),

          const Text(
            'Popular Items',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 20),

          const  ProductGridWidget(),
        ],
      ),
    ),
  ),
),
 


  // bottomNavigationBar: CustomBottomNavBar(
  //       currentIndex: _currentIndex,
  //       onTap: (index) {
  //         setState(() {
  //           _currentIndex = index;
  //         });
  //       },
  //     ),


        );
  }
}





//    bottomNavigationBar: CustomBottomNavBar(
//   currentIndex: _currentIndex,
//   onTap: (index) {
//     setState(() {
//       _currentIndex = index;
//     });
//   },
// ),