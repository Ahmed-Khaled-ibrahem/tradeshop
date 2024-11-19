import 'package:flutter/material.dart';
import 'color_scheme.dart';

ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  colorScheme: colorScheme,
  appBarTheme: const AppBarTheme().copyWith(),
  // brightness: Brightness.dark,

  textTheme:  const TextTheme().copyWith(
    displayLarge: const TextStyle().copyWith(fontSize: 120, fontWeight: FontWeight.w600,),
    displayMedium: const TextStyle().copyWith(fontSize: 30, fontWeight: FontWeight.w300,),
    displaySmall: const TextStyle().copyWith(fontSize: 30, fontWeight: FontWeight.w300,),
    headlineLarge: const TextStyle().copyWith(fontSize: 30, fontWeight: FontWeight.w300,),
    headlineMedium: const TextStyle().copyWith(fontSize: 30, fontWeight: FontWeight.w300,),
    headlineSmall: const TextStyle().copyWith(fontSize: 30, fontWeight: FontWeight.w300,),
    titleLarge: const TextStyle().copyWith(fontSize: 30, fontWeight: FontWeight.w300,),
    titleMedium: const TextStyle().copyWith(fontSize: 30, fontWeight: FontWeight.w300,),
    titleSmall: const TextStyle().copyWith(fontSize: 30, fontWeight: FontWeight.w300,),
    bodyLarge: const TextStyle().copyWith(fontSize: 30, fontWeight: FontWeight.w300,),
    bodyMedium: const TextStyle().copyWith(fontSize: 30, fontWeight: FontWeight.w300,),
    bodySmall: const TextStyle().copyWith(fontSize: 30, fontWeight: FontWeight.w300,),
    labelLarge: const TextStyle().copyWith(fontSize: 30, fontWeight: FontWeight.w300,),
    labelMedium: const TextStyle().copyWith(fontSize: 30, fontWeight: FontWeight.w300,),
    labelSmall: const TextStyle().copyWith(fontSize: 30, fontWeight: FontWeight.w300,),
  ),

);