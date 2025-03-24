import 'package:ecom2/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static final lightTheme = ThemeData.light(useMaterial3: true).copyWith(
    primaryColor: AppColors.primary,
    primaryTextTheme: GoogleFonts.dmSansTextTheme().copyWith(
      bodyLarge: TextStyle(
        color: AppColors.black,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      bodyMedium: TextStyle(
        color: AppColors.black,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
      bodySmall: TextStyle(
        color: AppColors.black,
        fontSize: 10,
        fontWeight: FontWeight.w400,
      ),
      displayLarge: TextStyle(
        color: AppColors.black,
        fontSize: 24,
        fontWeight: FontWeight.w700,
      ),
      displayMedium: TextStyle(
        color: AppColors.black,
        fontSize: 18,
        fontWeight: FontWeight.w700,
      ),
      displaySmall: TextStyle(
        color: AppColors.black,
        fontSize: 12,
        fontWeight: FontWeight.w700,
      ),
      headlineLarge: TextStyle(color: AppColors.black),
      headlineMedium: TextStyle(color: AppColors.black),
      headlineSmall: TextStyle(color: AppColors.black),
      labelLarge: TextStyle(
        color: AppColors.grey1,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      labelMedium: TextStyle(
        color: AppColors.grey1,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      labelSmall: TextStyle(
        color: AppColors.grey1,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      titleLarge: TextStyle(
        color: AppColors.black,
        fontSize: 24,
        fontWeight: FontWeight.w700,
      ),
      titleMedium: TextStyle(
        color: AppColors.black,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      titleSmall: TextStyle(
        color: AppColors.black,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
    ),
    textTheme: GoogleFonts.dmSansTextTheme().copyWith(
      bodyLarge: TextStyle(
        color: AppColors.black,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      bodyMedium: TextStyle(
        color: AppColors.black,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
      bodySmall: TextStyle(
        color: AppColors.black,
        fontSize: 10,
        fontWeight: FontWeight.w400,
      ),
      displayLarge: TextStyle(
        color: AppColors.black,
        fontSize: 24,
        fontWeight: FontWeight.w700,
      ),
      displayMedium: TextStyle(
        color: AppColors.black,
        fontSize: 18,
        fontWeight: FontWeight.w700,
      ),
      displaySmall: TextStyle(
        color: AppColors.black,
        fontSize: 12,
        fontWeight: FontWeight.w700,
      ),
      headlineLarge: TextStyle(color: AppColors.black),
      headlineMedium: TextStyle(color: AppColors.black),
      headlineSmall: TextStyle(color: AppColors.black),
      labelLarge: TextStyle(
        color: AppColors.grey1,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      labelMedium: TextStyle(
        color: AppColors.black,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      labelSmall: TextStyle(
        color: AppColors.black,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      titleLarge: TextStyle(
        color: AppColors.black,
        fontSize: 24,
        fontWeight: FontWeight.w700,
      ),
      titleMedium: TextStyle(
        color: AppColors.black,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      titleSmall: TextStyle(
        color: AppColors.black,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
    ),
    appBarTheme: AppBarTheme(
      titleTextStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: AppColors.black,
      ),
      centerTitle: true,
      backgroundColor: AppColors.primary,
      foregroundColor: blackColor,
    ),
    iconTheme: IconThemeData(
      color: AppColors.black,
      size: 20.0,
    ),
    scaffoldBackgroundColor: whiteColor,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.primary,
      type: BottomNavigationBarType.fixed,
      selectedIconTheme: IconThemeData(
        color: Colors.green,
      ),
      showUnselectedLabels: true,
      showSelectedLabels: true,
      unselectedIconTheme: IconThemeData(
        color: blackColor.withValues(alpha: 0.8),
      ),
      selectedItemColor: Colors.green,
      unselectedItemColor: blackColor.withValues(
        alpha: 0.8,
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      foregroundColor: Color(0xFF0C1A30),
      side: BorderSide(
        width: 1,
        color: Color(0xFF0C1A30),
      ),
      textStyle: GoogleFonts.dmSans(
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
        color: Color(0xFF0C1A30),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12.5, vertical: 15.0),
    )),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 12.5, vertical: 15),
        textStyle: GoogleFonts.montserrat(
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        backgroundColor: Colors.green,
        foregroundColor: whiteColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        textStyle: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.primary,
      foregroundColor: blackColor,
    ),
    tabBarTheme: TabBarThemeData(
      labelStyle: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      labelColor: AppColors.black,
      unselectedLabelColor: AppColors.black,
      indicatorColor: AppColors.secondary,
    ),
    radioTheme: RadioThemeData(
      fillColor: WidgetStatePropertyAll(AppColors.green),
    ),
  );
}
