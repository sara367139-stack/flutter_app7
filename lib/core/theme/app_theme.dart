import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_text_style.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.background,

    primaryColor: AppColors.primary,

    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.primary,
      foregroundColor: AppColors.white,
      elevation: 0,
    ),

    textTheme: const TextTheme(
      headlineLarge: AppTextStyle.heading,
      headlineMedium: AppTextStyle.subHeading,
      bodyMedium: AppTextStyle.body,
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom( 
         // // backgroundColor: ...
         // //أي ElevatedButton هتعمليه هيبقى بنفس الشكل من غير ما تعيدي كتابة التصميم في كل شاشة.
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.white,
        minimumSize: const Size(double.infinity, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    ),
  );
}