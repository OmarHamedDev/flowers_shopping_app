import 'package:google_fonts/google_fonts.dart';

import '../../common/common_imports.dart';
import '../colors/app_colore.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: Colors.white,
    fontFamily: GoogleFonts.merriweather().fontFamily,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.grey[50],
      labelStyle: TextStyle(
        color: Colors.grey[700],
        fontWeight: FontWeight.w600,
        letterSpacing: 1.1,
      ),
      hintStyle: TextStyle(color: Colors.grey[400]),
      contentPadding: const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: Colors.grey[300]!),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(color: AppColors.primaryColor, width: 2),
      ),
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 33,
        fontWeight: FontWeight.w700,
        color: AppColors.primaryColor,
      ),
      titleMedium: TextStyle(
        fontSize: 14,
        color: AppColors.primaryColor,
      ),
    ),
  );
}
