
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: TextField(

        decoration: InputDecoration(
          hintText: 'Search products.....',
            prefixIcon: Icon(Icons.search),//عشان ادخل الايقون  جوه البوكس
            border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        
        ),
      ),
    
  
    );
  }
}
