import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return  

SizedBox(
  height: 50,
  child: ListView(
    scrollDirection: Axis.horizontal,
    children: [
      _buildCategory("Shoes", true),
      _buildCategory("Jerseys", false),
      _buildCategory("Balls", false),
      _buildCategory("Accessories", false),
      _buildCategory("T-Shirts", false),
      _buildCategory("Caps", false),
      _buildCategory("Bags", false),
    ],
  ),

);
  
  }
 

 Widget _buildCategory(String title, bool isSelected) {
  //title → اسم الفئة.
   //isSelected → هل الفئة دي مختارة ولا لأ.
  
  return Container(
    margin: const EdgeInsets.only(left: 16),
    padding: const EdgeInsets.symmetric(
      horizontal: 20,
      vertical: 12,
    ),
    decoration: BoxDecoration(
      color: isSelected ? Colors.blue : Colors.grey.shade200,
      borderRadius: BorderRadius.circular(16),
    ),
    child: Text(
      title,
      style: TextStyle(
        color: isSelected ? Colors.white : Colors.black,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}
}