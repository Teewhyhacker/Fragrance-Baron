import 'package:flutter/material.dart';

class FBChipTheme {
  FBChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
      disabledColor: Colors.grey.withOpacity(0.4),
      labelStyle: const TextStyle(color: Colors.black),
      selectedColor: Colors.amber[800],
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),checkmarkColor: Colors.white);

      // DARK THEME 
  static ChipThemeData darkChipTheme = ChipThemeData(
      disabledColor: Colors.grey.withOpacity(0.4),
      labelStyle: const TextStyle(color: Colors.black),
      selectedColor: Colors.amber[800],
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),checkmarkColor: Colors.white);
}
