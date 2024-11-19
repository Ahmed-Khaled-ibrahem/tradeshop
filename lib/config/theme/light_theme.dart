import 'package:flutter/material.dart';
import 'color_scheme.dart';

ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  colorScheme: colorScheme,
  appBarTheme: const AppBarTheme().copyWith(),
  // brightness: Brightness.light,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  ),
  textTheme:  const TextTheme().copyWith(
    displayLarge: const TextStyle().copyWith(fontSize: 120, fontWeight: FontWeight.w600,), // login
    displayMedium: const TextStyle().copyWith(fontSize: 50, fontWeight: FontWeight.w600,),
    displaySmall: const TextStyle().copyWith(fontSize: 50, fontWeight: FontWeight.w500,),
    headlineLarge: const TextStyle().copyWith(fontSize: 40, fontWeight: FontWeight.w300,),
    headlineMedium: const TextStyle().copyWith(fontSize: 35, fontWeight: FontWeight.w300,),
    headlineSmall: const TextStyle().copyWith(fontSize: 28, fontWeight: FontWeight.w300,),
    titleLarge: const TextStyle().copyWith(fontSize: 24, fontWeight: FontWeight.w300,),
    titleMedium: const TextStyle().copyWith(fontSize: 22, fontWeight: FontWeight.w300,),
    titleSmall: const TextStyle().copyWith(fontSize: 20, fontWeight: FontWeight.w300,),
    bodyLarge: const TextStyle().copyWith(fontSize: 18, fontWeight: FontWeight.w300,),
    bodyMedium: const TextStyle().copyWith(fontSize: 16, fontWeight: FontWeight.w300,),
    bodySmall: const TextStyle().copyWith(fontSize: 14, fontWeight: FontWeight.w300,),
    labelLarge: const TextStyle().copyWith(fontSize: 16, fontWeight: FontWeight.w300,),
    labelMedium: const TextStyle().copyWith(fontSize: 12, fontWeight: FontWeight.w300,), // forgetpassword
    labelSmall: const TextStyle().copyWith(fontSize: 10, fontWeight: FontWeight.w300,),
  ),

);
